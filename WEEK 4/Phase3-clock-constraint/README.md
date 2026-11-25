<div align="center">

# 📘 Week 4 · Phase 3 — Apply the 100 MHz Clock Constraint
### Which port is the clock, and did the tool really see it?

![Phase](https://img.shields.io/badge/phase-3%20of%206-blue?style=for-the-badge) ![Port](https://img.shields.io/badge/clock%20port-wb__clk__i-blue?style=for-the-badge) ![Status](https://img.shields.io/badge/status-done-brightgreen?style=for-the-badge) ![Period](https://img.shields.io/badge/period-10%20ns-lightgrey?style=for-the-badge) ![Freq](https://img.shields.io/badge/frequency-100%20MHz-lightgrey?style=for-the-badge)

**Author:** Mysha Fathima · **Period:** November 2026 · **File:** `constraint.sdc` · `create_clock -name clk -period 10 [get_ports wb_clk_i]` 

[← Phase 2](../Phase2-orfs-setup/README.md) · [Phase 4 →](../Phase4-rtl2gds-run/README.md)

</div>

---

## 🎯 Goal
Find the clock port in the RTL, apply a 10 ns (100 MHz) constraint, and prove the flow picked it up.

## 🔎 How I identified the clock
`debug_regs` is the only block with flip-flops and it uses `always @(posedge wb_clk_i)`. That signal comes straight from the wrapper's `wb_clk_i` port, so `wb_clk_i` is the clock. 100 MHz means 1 / 100 MHz = 10 ns.

## 📝 The constraint file

```tcl
create_clock -name clk -period 10 [get_ports wb_clk_i]
```

📸 **SS 3.1 — `constraint.sdc`**
<img width="1013" height="342" alt="image" src="https://github.com/user-attachments/assets/7128aeee-eaa1-45da-866b-f8d78dc4cf52" />


## ✅ Proof that the flow recognised it

| Check | What I saw |
|---|---|
| `config.mk` | `SDC_FILE` points to `constraint.sdc` |
| ORFS copy step | `cp .../constraint.sdc ... 1_2_yosys.sdc` in the log |
| Generated SDC | `1_synth.sdc` contains `create_clock -name clk -period 10.0000 [get_ports {wb_clk_i}]` |
| Final timing | Evaluated against this 10 ns clock (Phase 4) |

📸 **SS 3.2 — `1_synth.sdc` showing the clock**
<img width="1090" height="398" alt="image" src="https://github.com/user-attachments/assets/cfd39e00-38b6-4c25-89b0-fc6763d4053b" />

## 🛠️ Issues and solutions
No problem specific to this phase.

## ✅ Completion checklist
- [x] Clock port identified from RTL
- [x] 10 ns constraint written
- [x] Connected in `config.mk`
- [x] Recognition confirmed

## 🗃️ Evidence
[`evidence/constraint.sdc`](evidence/constraint.sdc) · [`../Phase4-rtl2gds-run/evidence/local_synth.log`](../Phase4-rtl2gds-run/evidence/local_synth.log)

## 💡 What I learned
The port name must come from the RTL. The SDC copy under `results/` is the proof the tool really read my constraint.

## 📝 Summary of this phase
The only block with flip-flops is clocked by `wb_clk_i`, so that is my clock. 100 MHz means a 10 ns period, so I wrote one `create_clock` line and connected it through `config.mk`. I confirmed the tool read it by seeing the SDC copied into the results folder and the same line inside `1_synth.sdc`.
