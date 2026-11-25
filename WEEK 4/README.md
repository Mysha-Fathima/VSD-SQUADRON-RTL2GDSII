<div align="center">

# 📘 Week 4 — RTL-to-GDS of the User Project Wrapper

### OpenROAD Flow Scripts · sky130hd · 100 MHz

![Clock](https://img.shields.io/badge/clock-100%20MHz-blue?style=for-the-badge)
![Phases](https://img.shields.io/badge/phases-6%2F6-brightgreen?style=for-the-badge)
![Timing](https://img.shields.io/badge/setup%20slack-7.94%20ns%20MET-brightgreen?style=for-the-badge)
![GDS](https://img.shields.io/badge/GDSII-generated-lightgrey?style=for-the-badge)

**Author:** Mysha Fathima · **Period:** November 2026
**Design:** `user_project_wrapper` from [VSDSquadron SoC](https://github.com/vsdip/vsdsquadron-soc) · branch `add-vsdsquadron-soc-folders`

</div>

---

## 🎯 What this week was about

I took the top-level wrapper of the VSDSquadron SoC and pushed it through the complete OpenROAD flow at 100 MHz, from RTL to a GDSII file. The real task was not clicking "run". It was working out which files the wrapper needs, how to lay them out for ORFS, which port is the clock, and how to fix the things that break on the way.

## 🗂️ Navigation

| Phase | What it covers | Status | Link |
|---|---|---|---|
| 1 | Wrapper dependency analysis | ✅ | [Phase 1](Phase1-analyze-wrapper/README.md) |
| 2 | ORFS design environment | ✅ | [Phase 2](Phase2-orfs-setup/README.md) |
| 3 | 100 MHz clock constraint | ✅ | [Phase 3](Phase3-clock-constraint/README.md) |
| 4 | Full RTL-to-GDS run | ✅ | [Phase 4](Phase4-rtl2gds-run/README.md) |
| 5 | Outputs for gate-level preparation | ✅ | [Phase 5](Phase5-gate-level-outputs/README.md) |
| 6 | Debugging and issues | ✅ | [Phase 6](Phase6-debugging/README.md) |

## 🧭 The flow I ran

```mermaid
flowchart LR
    A[Analyze wrapper] --> B[ORFS setup] --> C[Clock 10 ns] --> D[Synthesis]
    D --> E[Floorplan] --> F[Placement] --> G[CTS] --> H[Routing] --> I[Fill] --> J[GDSII]
```

## 📊 Results at a glance

| Item | Result |
|---|---|
| Top module / clock | `user_project_wrapper` / `wb_clk_i`, 10 ns |
| Flow | Synthesis → floorplan → placement → CTS → routing → fill → GDS, all completed |
| Timing at 100 MHz | WNS 0.00, TNS 0.00, worst setup slack **7.94 ns (MET)** |
| Final files | `6_final.v`, `6_final.odb`, `6_final.gds`, `6_finish.rpt` |
| Runtime | about 23 minutes on a laptop (WSL2) |
| Biggest problem | Global route error RSZ-0074, fixed with `-DSIM` |

## 📋 Where each requirement of the task is covered

| Required by the task | Where |
|---|---|
| Design dependency analysis | Phase 1 |
| ORFS configuration notes and directory structure | Phase 2 |
| Clock constraint configuration | Phase 3 |
| Execution steps, stage-wise screenshots and logs | Phase 4 |
| Final output artifacts | Phase 5 |
| Debugging notes | Phase 6 |

## 🖥️ My environment

Windows 10 laptop (8 GB RAM, 4 cores), WSL2 Ubuntu 24.04. OpenROAD 26Q4-2390 built from source, Yosys 0.71+59 from OSS CAD Suite, KLayout 0.28.16. I started in GitHub Codespaces, but the free hours ran out, so the final run is local.

## ⚠️ Honest notes

- The fix for RSZ-0074 worked, but I changed the config and the OpenROAD version at the same time, so I can't say which of the two removed it. Details in Phase 6.
- The die is large (2920 × 3520 µm) because the wrapper has about 500 pins. Utilisation is only 2 %.

## ✅ Completion checklist

- [x] Wrapper dependencies correctly identified
- [x] ORFS design environment configured
- [x] RTL files organised
- [x] 100 MHz clock constraint applied
- [x] Full RTL-to-GDS flow runs successfully
- [x] Final filled database and netlist generated
- [x] Outputs documented clearly

## 💡 What I learned

- Setting up a real flow means finding dependencies and options myself.
- Every ORFS stage leaves a database and a report, so it's easy to prove what ran.
- Writing down what is still unproven is part of honest debugging.

<div align="center">

**Week 4 complete · RTL to GDSII at 100 MHz**

</div>
