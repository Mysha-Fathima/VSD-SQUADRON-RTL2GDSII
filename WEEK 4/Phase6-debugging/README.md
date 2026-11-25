<div align="center">

# 📘 Week 4 · Phase 6 — Debugging and Issue Resolution

![Issues](https://img.shields.io/badge/issues-6-blue?style=for-the-badge)
![Resolved](https://img.shields.io/badge/resolved-6-brightgreen?style=for-the-badge)
![RSZ](https://img.shields.io/badge/RSZ--0074%20after%20fix-0-brightgreen?style=for-the-badge)

**Author:** Mysha Fathima · [← Phase 5](../Phase5-gate-level-outputs/README.md) · [Week 4 home](../README.md)

</div>

---

## 📊 Issues at a glance

| # | Stage | Status |
|---|---|---|
| 1 | Setup: Yosys path | ✅ Resolved |
| 2 | Synthesis warnings: undriven outputs | ✅ Handled (not the cause of the route error) |
| 3 | Global route: RSZ-0074 | ✅ Resolved |
| 4 | Codespaces quota ended | ✅ Moved to local WSL2 |
| 5 | Prebuilt OpenROAD too old | ✅ Built from source |
| 6 | GDS merge: klayout missing | ✅ Resolved |

## 1️⃣ ORFS could not find Yosys
**What went wrong:** `make synth` looked for Yosys in `tools/install`, which was not installed.
**How I found it:** the error at the start of the run.
**How I fixed it:** set `YOSYS_EXE` and `OPENROAD_EXE` to the installed tools.

📸 **SS 6.1 — Yosys path error**
<img width="1090" height="568" alt="image" src="https://github.com/user-attachments/assets/a8bae0c1-4a57-472d-aeef-e4756f36d140" />


## 2️⃣ "Used but has no driver" warnings
**What went wrong:** Yosys warned about `user_irq[2:0]`, `la_data_out[127:0]` and `io_oeb`.
**How I found it:** warnings in the synthesis log.
**How I fixed it:** added tie-offs in the flow copy (saved as a diff). The later routing error continued, so the warnings were not its cause.

📸 **SS 6.2 — warnings and the tie-off diff**
<img width="1090" height="343" alt="image" src="https://github.com/user-attachments/assets/c70c2796-5186-4484-aebd-5e9f66618644" />


## 3️⃣ Global route error RSZ-0074
**What went wrong:** `5_1_grt` failed with `[ERROR RSZ-0074] failed to build tree from global routes: found route to 1 pins, expected 0`, after CTS had passed.
**How I found it:** the error in the flow output and `5_1_grt.log`.
**How I fixed it:** I switched to the wrapper's own `SIM` branch (`-DSIM`), which removes the `io_in → io_out` feed-through, and removed my `io_oeb` tie-off. The re-run completed and the RSZ-0074 count was **0**.
**Honest note:** the likely cause is that input-to-output feed-through, but I also moved to a newer OpenROAD (26Q4-2390) at the same time, so I can't prove which change did it.

📸 **SS 6.3 — RSZ-0074 error (Codespace)**
<img width="1090" height="756" alt="image" src="https://github.com/user-attachments/assets/61b293f4-a341-4ff2-8623-97b295c24281" />


📸 **SS 6.4 — `-DSIM` change and `RSZ-0074` count = 0 after the fix**
<img width="1090" height="45" alt="image" src="https://github.com/user-attachments/assets/82311996-4db8-4187-8a68-599342fc943a" />


## 4️⃣ Codespaces quota ended
**What went wrong:** "You are out of monthly free usage".
**How I fixed it:** continued locally in WSL2 Ubuntu 24.04 with files on D: (WSL limited to 5 GB RAM, 6 GB swap).

📸 **SS 6.5 — Codespaces quota banner**
<img width="1090" height="496" alt="image" src="https://github.com/user-attachments/assets/4472c0dd-b1b2-456d-8b77-6c450b1975bd" />


## 5️⃣ OpenROAD prebuilt binary too old
**What went wrong:** the downloadable build was from December 2024 and releases had moved elsewhere.
**How I fixed it:** built OpenROAD from source (24,279 build steps, 2 threads). I stopped the optional Yosys build and used Yosys 0.71 from OSS CAD Suite.

📸 **SS 6.6 — old release page and build progress**
<img width="1090" height="565" alt="image" src="https://github.com/user-attachments/assets/b9e1ae61-8048-4c0d-8cdb-4d704af86594" />

<img width="1090" height="735" alt="image" src="https://github.com/user-attachments/assets/36702fda-6676-48e8-8405-e6536790cf4d" />

## 6️⃣ GDS step: klayout not found
**What went wrong:** the last step failed with `the klayout Python module is not installed`.
**How I found it:** last lines of the flow output.
**How I fixed it:** the ORFS virtual environment already contained klayout, so I ran `source ~/OpenROAD-flow-scripts/.venv/bin/activate` and re-ran `make`, which resumed at the GDS step.

📸 **SS 6.7 — klayout error**
<img width="1090" height="127" alt="image" src="https://github.com/user-attachments/assets/305d1af8-1835-4acc-9ad6-a483e76b880a" />


📸 **SS 6.8 — successful GDS step**
<img width="1090" height="585" alt="image" src="https://github.com/user-attachments/assets/6192b0d1-323f-4107-9192-61a921e73fec" />


## ⚠️ Open items
A controlled test would run the original wrapper (with the feed-through) on the new OpenROAD to see whether RSZ-0074 still appears.

## ✅ Completion checklist
- [x] Missing tool path documented
- [x] Undriven warnings documented
- [x] Flow failure analysed and fixed
- [x] Environment issues documented
- [x] Each issue has cause, identification and fix

## 🗃️ Evidence
[`evidence/issue2_tieoff.diff`](evidence/issue2_tieoff.diff) · [`evidence/issue2b_grt_after_tieoff.log`](evidence/issue2b_grt_after_tieoff.log) · [`evidence/issue3_rsz0074_count_after_fix.txt`](evidence/issue3_rsz0074_count_after_fix.txt) · [`evidence/issue4_klayout_gds_error.log`](evidence/issue4_klayout_gds_error.log) · [`evidence/issue5_build_openroad_tail.log`](evidence/issue5_build_openroad_tail.log)

## 💡 What I learned
Read the first error and the log of the failing stage. Change one thing at a time (I changed two, so one cause stays unproven). Environment problems cost more time than design problems.
