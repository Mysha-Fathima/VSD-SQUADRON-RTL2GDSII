# Phase 2: Toolchain Deep Dive and Flow Explanation
 
All findings below come from reading the repo's `.devcontainer` files and from inspecting my own Sky130 `gcd` run in the Codespace.
 
## Task 2.1 – Toolchain table
 
How I found this: I read `.devcontainer/Dockerfile`, `.devcontainer/install-openroad.sh` and `.devcontainer/devcontainer.json`, then confirmed each tool with `which`, `ls -l` and my run logs.
 
| Tool | Installed From | Purpose in Flow | Stage Used |
|---|---|---|---|
| **OpenROAD** (v2.0-28075-g0f99689f45) | Prebuilt tarball, not built from source. `devcontainer.json` runs `install-openroad.sh` through `postCreateCommand`. The script downloads the archive with `wget` (from `$OPENROAD_URL`), copies the binary to `/opt/openroad/bin/openroad` and links it to `/usr/local/bin/openroad`. The `COPY orfs/tools/openroad...` lines in the Dockerfile are commented out. | The main physical design engine: floorplan, placement, clock tree, routing and reporting | Floorplan through final report (`2_*` to `6_report`) |
| **Yosys** (0.58+94) | Downloaded in the Dockerfile with `curl` as the OSS CAD Suite release `oss-cad-suite-linux-x64-20251031.tgz` from GitHub. Lives at `/opt/oss-cad-suite/bin/yosys`. | Converts the Verilog RTL into a gate-level netlist made of Sky130 standard cells | Synthesis (`1_1_yosys_canonicalize`, `1_2_yosys`, `1_synth`) |
| **TritonCTS** | No separate install. It is a module inside the OpenROAD binary. Proof: `CTS-0050`/`CTS-0051` messages (root buffer `clkbuf_8`, sink buffer `clkbuf_16`) appear in `4_1_cts.log`. | Builds the clock tree and inserts clock buffers so the clock reaches all flip-flops evenly | CTS (`4_1_cts`) |
| **FastRoute** | No separate install. Part of OpenROAD as the global router. Proof: `GRT-0020/0021` messages (met1 to met5) in `5_1_grt.log`. | Global routing: decides which routing regions each net passes through before exact wires are drawn | Routing (`5_1_grt`); detailed routing follows in `5_2_route` |
| **OpenSTA** | No separate install. Part of OpenROAD. Proof: `report_wns`, `report_tns` and `report_worst_slack` sections in `reports/.../6_finish.rpt`. | Static timing analysis: checks every path against the clock constraint and reports slack, WNS and TNS | Used across the flow; final numbers in `6_report` / `6_finish.rpt` |
| **KLayout** (0.30.9) | Downloaded as `klayout_0.30.9-1_amd64.deb` from klayout.org and installed with `apt-get` in the Dockerfile. Lives at `/usr/bin/klayout`. | Merges the routed design with the standard-cell GDS, and is the viewer for the final layout | GDS merge (`6_1_merge`); layout viewing |
| **Python** (3.10.12) | `apt-get` in the Dockerfile (`python3`, `pip`, `numpy`, `pandas` and more). | Runs helper scripts. In the Makefile, `genElapsedTime.py` is called through `$(PYTHON_EXE)` to produce the per-stage runtime table printed at the end of the run | Supporting the whole flow (reports and utilities) |
| **Make** (GNU Make 4.3) | `apt-get` (`make`, `build-essential`). | Reads the Makefile and runs the stages in dependency order | Entire flow |
| **Git** | `apt-get` (`git`, `git-lfs`). | Clones the repo and handles large tracked files through Git LFS | Setup / version control |
 
Other things the Dockerfile installs that are not part of the main flow: Verilator and Icarus Verilog (simulation), Magic and Ngspice (layout/analog), GTKWave (waveforms), and XFCE with noVNC for the browser desktop on port 6080.
 
Base image: `ubuntu:22.04`.
 
## Task 2.2 – How the flow works
 
**1. What does ORFS automate?**

ORFS takes a design from RTL to a finished layout without me running each tool by hand. In my run, a single `make` command went through 19 steps: Yosys synthesis, floorplan, tap cells and power grid, placement, clock tree, global and detailed routing, filler cells, GDS merge and the final report. It picked up all its settings from `config.mk` and the platform folder, so the only thing I chose was which design to run (`gcd` on `sky130hd`). The whole thing took 3m15s.
 
**2. How do the Makefiles chain the stages?**

Every stage is written as a rule: an output file, then the files it needs. For example, in the Makefile the `2_1_floorplan` step takes `1_synth.odb` and `1_synth.sdc` (plus the tech LEF, cell LEF and liberty files) as inputs. In the same way, `4_1_cts` needs `3_place.odb`, and `5_2_route` needs `5_1_grt.odb`. Because each result file is the next stage's input, `make` always runs things in the right order. It also means that if a result file already exists and nothing before it changed, `make` can skip that stage. That is why `make clean_all` is needed for a fresh run.
 
**3. Where does synthesis end and physical design begin?**

Synthesis ends at `1_synth`, which is the gate-level netlist and its constraints file. That netlist says which cells are used and how they connect, but not where anything sits on the chip. Physical design begins at `2_1_floorplan`, where the die and core size are set (my run had 40% core utilization) and the cells get a real area to live in. From there the flow decides where cells go (placement), how the clock reaches them (CTS) and how wires connect them (routing).
 
**4. Where is timing checked?**

Timing is tracked at several points, not just the end. The constraint comes from `constraint.sdc` (the clock), and OpenSTA, which is built into OpenROAD, evaluates it. The flow also has a timing repair step after placement (`3_6_place_repair_timing` appears in the Makefile) and the CTS and routing stages change the timing again. The final numbers are in `6_report` and `6_finish.rpt`. In my run the final report showed **WNS -2.19 and TNS -92.21**, so the design did not meet timing at the end even though the flow completed.
 
**5. Where is the GDS produced?**

It is produced at the end, in `6_1_merge`. The merge log shows KLayout 0.30.9 combining the routed design with the standard-cell GDS from `platforms/sky130hd/gds`, and it reports that all LEF cells had matching GDS cells and that there were no orphan cells. The result is copied as `results/sky130hd/gcd/base/6_final.gds` (821K). The Makefile names everything from this stage `6_final.*`, which makes it easy to find for scripts.
 
**6. What does the platform folder provide?**

`platforms/sky130hd` holds the technology data the flow depends on: `lef` (the cell and layer geometry used by OpenROAD), `lib` (timing and power data used for synthesis and timing analysis), `gds` (the actual cell layouts used at the merge step), `pdn.tcl` (the power grid recipe), `fastroute.tcl` and `setRC.tcl` (routing and parasitic settings) and `tapcell.tcl`. The design folder (`designs/sky130hd/gcd`) only adds the design-specific parts: `config.mk` and `constraint.sdc`. This split is why the same flow can target a different technology by changing the platform.
 
**7. Which stages took the longest in my run?**

From the elapsed-time table: CTS took 30 s, global routing 61 s and detailed routing 53 s, out of 162 s in total. Synthesis (2 s), floorplan (3 s) and global placement (3 s) were quick. So for a small design like `gcd`, clock tree and routing were most of the runtime. Peak memory was highest in detailed routing, at 635 MB.
 
## Evidence (screenshots saved in `screenshots/phase2/`)
 
- `ls -la .devcontainer`
- Dockerfile contents
- `devcontainer.json`
- `grep` of the `install-openroad.sh` lines
- `which openroad yosys klayout python3 make git`
- `ls -l /usr/local/bin/openroad`
- CTS, GRT and merge log snippets
- Makefile `grep` showing the stage dependencies and `genElapsedTime`
  
## Phase 2 completion checklist

- [ ] Both devcontainer files inspected
- [ ] Major tools mapped to their real installation sources
- [ ] Tool purposes and stages documented
- [ ] ORFS automation explained in my own words
- [ ] Makefile orchestration explained
- [ ] Synthesis-to-physical-design handoff explained
- [ ] Timing reports and GDS output location identified

## Key takeaway

Understanding the toolchain makes debugging more systematic: instead of treating the flow as a black box, I can identify which tool is responsible for a stage and where to look when that stage fails.
