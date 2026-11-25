<div align="center">

# 📘 Week 4 · Phase 2 — Prepare the ORFS Design Environment
### Where do the files go, and how does ORFS find them?

![Phase](https://img.shields.io/badge/phase-2%20of%206-blue?style=for-the-badge) ![Platform](https://img.shields.io/badge/platform-sky130hd-blue?style=for-the-badge) ![Status](https://img.shields.io/badge/status-done-brightgreen?style=for-the-badge) ![Config](https://img.shields.io/badge/config%20files-2-lightgrey?style=for-the-badge) ![Die](https://img.shields.io/badge/die-2920x3520%20um-lightgrey?style=for-the-badge)

**Author:** Mysha Fathima · **Period:** November 2026 · **Folder:** `flow/designs/sky130hd/user_project_wrapper/` · Tools: OpenROAD 26Q4, Yosys 0.71
[← Phase 1](../Phase1-analyze-wrapper/README.md) · [Phase 3 →](../Phase3-clock-constraint/README.md)

</div>

---

## 🎯 Goal
Work out the folder structure ORFS expects, add the RTL and the config, and make sure synthesis runs with no missing modules.

## 🧭 How I figured out the structure
I looked at the sample designs that ship with ORFS (the platform list and the `gcd` example) and copied their layout.

📸 **SS 2.1 — ORFS platform list in the explorer**
<img width="1090" height="259" alt="image" src="https://github.com/user-attachments/assets/6e713023-3ee2-455c-93a7-245bb43b3f98" />


📸 **SS 2.2 — the `gcd` `config.mk` used as a template**
<img width="1090" height="368" alt="image" src="https://github.com/user-attachments/assets/52e6f6bd-3fd3-4525-9f4f-b6f1cd8b065f" />


## 📁 Directory structure I created

```
OpenROAD-flow-scripts/flow/designs/
├── src/user_project_wrapper/
│   ├── __user_project_wrapper.v     (flow copy = original + saved diff)
│   ├── debug_regs.v
│   └── defines.v
└── sky130hd/user_project_wrapper/
    ├── config.mk
    └── constraint.sdc
```

```bash
F=~/OpenROAD-flow-scripts/flow
S=~/work/vsdsquadron-soc/caravel/verilog/rtl
mkdir -p $F/designs/src/user_project_wrapper $F/designs/sky130hd/user_project_wrapper
cp $S/__user_project_wrapper.v $S/debug_regs.v $S/defines.v $F/designs/src/user_project_wrapper/
patch $F/designs/src/user_project_wrapper/__user_project_wrapper.v < issue2_tieoff.diff
cp config.mk constraint.sdc $F/designs/sky130hd/user_project_wrapper/
```

`mkdir -p` makes the two folders, `cp` brings in the files, and `patch` re-applies my saved edits to the copy so the original stays untouched.

📸 **SS 2.3 — `mkdir`, `cp`, `ls`**
<img width="1270" height="398" alt="image" src="https://github.com/user-attachments/assets/9a508a84-ed5c-41b1-a66b-30188521ef3e" />


📸 **SS 2.4 — rebuilt tree (`ls -R`) and `grep VERILOG_DEFINES`**
<img width="1287" height="284" alt="image" src="https://github.com/user-attachments/assets/a7de79bf-5809-4df5-8780-361e01707812" />


## ⚙️ Configuration notes (`config.mk`)

| Variable | Value | Why |
|---|---|---|
| `DESIGN_NAME` | `user_project_wrapper` | Module name, not the file name |
| `PLATFORM` | `sky130hd` | The PDK used in the course |
| `VERILOG_FILES` | wrapper + `debug_regs.v` | Only the files really compiled |
| `VERILOG_DEFINES` | `-DMPRJ_IO_PADS=38 -DSIM` | Macro the wrapper needs; `SIM` explained in Phase 6 |
| `SDC_FILE` | `constraint.sdc` | The 100 MHz clock (Phase 3) |
| `DIE_AREA` / `CORE_AREA` | `0 0 2920 3520` / `10 10 2910 3510` | Fixed, because about 500 pins need room |

📸 **SS 2.5 — `cat config.mk` and `constraint.sdc`**
<img width="1090" height="725" alt="image" src="https://github.com/user-attachments/assets/96bc8650-d7dc-4a17-ac1f-298b952753bb" />


## 🧰 Tools
OpenROAD 26Q4-2390 (built from source, see Phase 6) and Yosys 0.71+59 from OSS CAD Suite. ORFS finds them through two variables.

```bash
export YOSYS_EXE=$HOME/tools/oss-cad-suite/bin/yosys
export OPENROAD_EXE=$HOME/OpenROAD-flow-scripts/tools/install/OpenROAD/bin/openroad
```

📸 **SS 2.6 — `openroad -version` (26Q4-2390)**
<img width="1090" height="735" alt="image" src="https://github.com/user-attachments/assets/556853d5-5d08-411e-b751-3dc08ba7b8df" />


## 🛠️ Issues and solutions

| # | Problem | Fix |
|---|---|---|
| 1 | ORFS looked for Yosys in `tools/install` | `YOSYS_EXE` and `OPENROAD_EXE` (Phase 6) |
| 2 | About 500 pins, so automatic die sizing didn't suit | Fixed die and core area |

## ✅ Completion checklist
- [x] Workspace prepared
- [x] RTL added
- [x] Design name and top module set
- [x] Constraint connected
- [x] Synthesis runs

## 🗃️ Evidence
[`evidence/config.mk`](evidence/config.mk) · [`../Phase3-clock-constraint/evidence/constraint.sdc`](../Phase3-clock-constraint/evidence/constraint.sdc) · [`../Phase6-debugging/evidence/issue2_tieoff.diff`](../Phase6-debugging/evidence/issue2_tieoff.diff)

## 💡 What I learned
`config.mk` decides top module, files, defines and floorplan. Keeping the original RTL untouched and storing my edits as a diff keeps every change traceable.

## 📝 Summary of this phase
I copied the layout of the sample ORFS designs and created two folders for my design: one for the RTL and one for the config. The config tells ORFS the top module, the two Verilog files, the macros, the clock file and a fixed die size, since the wrapper has about 500 pins. I kept the original RTL untouched and applied my edits as a saved diff, so every change is traceable.
