# Phase 1: ORFS Execution in the Cloud (GitHub Codespaces)
 
**Goal:** run a complete RTL-to-GDSII flow on a real design, using OpenROAD Flow Scripts (ORFS) inside a GitHub Codespace, and collect proof for every stage.
 
| | |
|---|---|
| **Design** | `gcd` (greatest common divisor circuit) |
| **Technology** | Sky130 high-density cells (`sky130hd`) |
| **Where it ran** | GitHub Codespace (fork of `vsdip/vsd-scl180-orfs`) |
| **Result** | Flow completed, GDS generated, total time **3m 15s** |
 
---
 
## 1. Setup
 
### 1.1 Fork and Codespace
 
1. Forked `vsdip/vsd-scl180-orfs` into my own account (same name, `main` branch only).
2. Opened it in a Codespace. The devcontainer built the environment automatically.

> 📸 **Screenshot:** Codespace after the devcontainer build finished (terminal ready)
> <img width="1044" height="796" alt="image" src="https://github.com/user-attachments/assets/1d873879-3fdd-4ab3-982f-afa5f95e3ec8" />

 
### 1.2 Tool versions in the cloud environment
 
| Tool | Version |
|---|---|
| OpenROAD | `v2.0-28075-g0f99689f45` |
| Yosys | `0.58+94` (git sha1 `4011d7265`, clang++ 18.1.8) |
| Python | `3.10.12` |
| GNU Make | `4.3` |
 
> 📸 **Screenshot:** `openroad -version`, `yosys -V`, `python3 --version`, `make --version`
> <img width="984" height="465" alt="image" src="https://github.com/user-attachments/assets/bee8471e-ee88-4d6d-a9d9-8bf0bd1d7256" />

 
### 1.3 A note about SCL180 and Sky130
 
The repository is built for the **SCL180** technology, but its README says the SCL180 PDK files are licensed and not included. The task asks for a **Sky130** testcase, and the repo does contain ORFS's open `sky130hd` platform and designs. So I used Sky130 and did not need the SCL180 PDK.
 
```text
orfs/flow/designs/sky130hd/   -> gcd, aes, ibex, jpeg, riscv32i, ...
orfs/flow/platforms/sky130hd/ -> lef, lib, gds, pdn.tcl, ...
```
 
> 📸 **Screenshot:** `find . -name config.mk | grep -i sky130`
> <img width="1090" height="748" alt="image" src="https://github.com/user-attachments/assets/614bb641-0636-46ac-93d4-5e540edcdfd9" />

 
---
 
## 2. Understanding the design before running it
 
I read the design's config file first, because `make` takes all its settings from it.
 
```bash
cd orfs/flow
cat designs/sky130hd/gcd/config.mk
```
 
| Setting | Value | Meaning |
|---|---|---|
| `DESIGN_NAME` | `gcd` | Top-level module to build |
| `PLATFORM` | `sky130hd` | Technology and cell library |
| `VERILOG_FILES` | `.../src/gcd/gcd.v` | The RTL source |
| `SDC_FILE` | `.../constraint.sdc` | Timing constraints (the clock) |
| `CORE_UTILIZATION` | `40` | Cells fill about 40% of the core area |
| `ADDER_MAP_FILE` | *(empty)* | Special adder mapping switched off for GCD |
| `TNS_END_PERCENT` | `100` | Report all violating endpoints |
| `EQUIVALENCE_CHECK` | `1` | Check netlist is logically equal to the RTL |
 
> 📸 **Screenshot:** `cat designs/sky130hd/gcd/config.mk` and `ls platforms/sky130hd`
> <img width="1090" height="486" alt="image" src="https://github.com/user-attachments/assets/897ecec9-c079-4b9a-aaad-15af9efa0113" />

 
---
 
## 3. Running the flow
 
```bash
make clean_all
time make DESIGN_CONFIG=./designs/sky130hd/gcd/config.mk 2>&1 | tee ~/week2_cloud_run.log
```
 
| Part | Why |
|---|---|
| `make clean_all` | Delete old results so the run starts fresh |
| `DESIGN_CONFIG=...` | Tell make which design and platform to build |
| `time` | Measure total runtime |
| `2>&1 \| tee file` | Show output on screen and save it to a log |
 
> 📸 **Screenshot:** end of the run (stage table and `real` time)
> <img width="1088" height="909" alt="image" src="https://github.com/user-attachments/assets/d5fc9027-3dba-4c68-9840-d4f552026c2d" />

 
### Runtime per stage
 
| Stage | Seconds | Peak memory (MB) |
|---|---:|---:|
| Synthesis (`1_2_yosys`, `1_synth`) | 2 | 109 |
| Floorplan (`2_1_floorplan` to `2_4`) | 3 | 130 |
| Placement (`3_1` to `3_5`) | 4 | 215 |
| Clock tree synthesis (`4_1_cts`) | 30 | 148 |
| Global routing (`5_1_grt`) | 61 | 228 |
| Detailed routing (`5_2_route`) | 53 | 635 |
| GDS merge (`6_1_merge`) | 4 | 431 |
| Final report (`6_report`) | 3 | 223 |
| **Total** | **162** | **635** |
 
```text
real 3m15.502s   user 3m18.714s   sys 0m22.241s
```
 
CTS and routing together took about 144 of the 162 seconds, so for a small design like `gcd` these two stages dominate the runtime.
 
---
 
## 4. Evidence for each stage
 
All snippets were taken from `orfs/flow/logs/sky130hd/gcd/base/`, `reports/...` and `results/...`.
 
| # | Proof required | Source | Saved file |
|---|---|---|---|
| 1 | Synthesis completion | `1_2_yosys.log`, `synth_stat.txt` | [1_synthesis.txt](evidence/1_synthesis.txt) |
| 2 | Floorplan snippet | `2_1_floorplan.log` | [2_floorplan.txt](evidence/2_floorplan.txt) |
| 3 | Placement completion | `3_5_place_dp.log` | [3_placement.txt](evidence/3_placement.txt) |
| 4 | CTS snippet | `4_1_cts.log` | [4_cts.txt](evidence/4_cts.txt) |
| 5 | Routing completion | `5_2_route.log` | [5_routing.txt](evidence/5_routing.txt) |
| 6 | Final GDS | `results/.../6_final.gds` | [6_gds.txt](evidence/6_gds.txt) |
| 7 | Timing (WNS/TNS) | `reports/.../6_finish.rpt` | [7_timing.txt](evidence/7_timing.txt) |
 
Full run log: [full_run.log](evidence/full_run.log)
 ><img width="1090" height="633" alt="image" src="https://github.com/user-attachments/assets/e28cd300-1915-4eef-8123-b5a98f7c7ef4" />
 
> 📸 **Screenshot:** synthesis proof (`tail` of `1_2_yosys.log` and `synth_stat.txt`)
<img width="1090" height="763" alt="image" src="https://github.com/user-attachments/assets/efa1fc22-fe2d-4bff-9b27-dbc83b652bd9" />

> 📸 **Screenshot:** floorplan snippet
><img width="1090" height="573" alt="image" src="https://github.com/user-attachments/assets/f0b73bd2-97f9-49f8-8090-27ed05f0f697" />

> 📸 **Screenshot:** placement completion
><img width="1090" height="542" alt="image" src="https://github.com/user-attachments/assets/1ed093d3-c4fb-4e67-acf2-97d10c98cd93" />

> 📸 **Screenshot:** CTS snippet (root buffer `clkbuf_8`, sink buffer `clkbuf_16`)
><img width="1090" height="439" alt="image" src="https://github.com/user-attachments/assets/78abba22-653f-4ed3-a8ed-c9bb97ceedd1" />

> 📸 **Screenshot:** routing completion (global route used layers met1 to met5)
><img width="1090" height="446" alt="image" src="https://github.com/user-attachments/assets/8a372bde-b430-4cd0-ac5d-8c2b3152d52d" />

> 📸 **Screenshot:** `ls -lh results/sky130hd/gcd/base/6_final.gds`
> <img width="1090" height="506" alt="image" src="https://github.com/user-attachments/assets/cf75aa66-8a70-4d45-ae1f-72dcdf2ef018" />

 
### Final GDS
 
`6_final.gds` was generated (**821 KB**). It is a copy of `6_1_merged.gds`, produced when KLayout merged the routed design with the standard-cell layouts.
 
### Timing result
 
| Metric | Value |
|---|---|
| WNS (worst negative slack) | **-2.19** |
| TNS (total negative slack) | **-92.21** |
| Worst slack | -2.19 (VIOLATED) |
 
The flow finished and produced a GDS, but the design **did not meet timing** at the final check. Negative slack means a path is slower than the clock allows. For this phase I recorded the numbers as they are; fixing timing is a separate optimisation task.
 
> 📸 **Screenshot:** `grep -iE "wns|tns|slack" reports/.../6_finish.rpt`
> <img width="1090" height="506" alt="image" src="https://github.com/user-attachments/assets/a5911cf8-7a8c-4345-a47e-b0411e5121e2" />

 
---
 
## 5. Errors and observations
 
| Item | Detail |
|---|---|
| Blocking errors | None. The flow ran to completion on the first attempt |
| Technology mismatch | Repo is SCL180, task uses Sky130. Solved by using the included `sky130hd` platform (see 1.3) |
| Tip learned | The `.devcontainer` folder is hidden. `ls -a` is needed to see it |
 
---
 
## 6. Checklist
 
- [x] Fork created and Codespace built
- [x] Tool versions captured
- [x] Sky130 `gcd` design identified and config understood
- [x] Full flow ran successfully
- [x] Synthesis, floorplan, placement, CTS and routing proof collected
- [x] Final GDS generated
- [x] Timing report captured (WNS -2.19, TNS -92.21)
- [x] Runtime recorded (3m 15s)
## 7. What I learned
 
- ORFS runs the whole RTL-to-GDS flow from one `make` command, driven by a small `config.mk`.
- Each stage leaves its own log, so a result can be traced to a specific file.
- A finished flow does not mean a timing-clean design. WNS and TNS must always be read.
 
## Key takeaway

This phase shows whether the provided ORFS setup can execute the testcase in a prepared cloud development environment. The saved runtime, logs, and timing values become the reference for the local run in Phase 4.
