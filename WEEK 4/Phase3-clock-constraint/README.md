<div align="center">

# ⏱️ Week 4 · Phase 3 — Apply the 100 MHz Clock Constraint

### 100 MHz = 10 ns period

![Phase](https://img.shields.io/badge/phase-3%20of%206-blue?style=for-the-badge)
![Status](https://img.shields.io/badge/status-pending-lightgrey?style=for-the-badge)
![Period](https://img.shields.io/badge/period-10%20ns-orange?style=for-the-badge)

**Author:** Mysha Fathima · **Period:** November 2026

</div>

---

## 🗂️ Navigation
[Week 4 home](../README.md) · [⬅ Phase 2](../Phase2-orfs-setup/README.md) · Phase 3 · [Phase 4 ➡](../Phase4-rtl2gds-run/README.md)

## 📝 Constraint file used
```tcl
create_clock -name clk -period 10 [get_ports wb_clk_i]
```
*(Confirm this is exactly what is in your .sdc.)*

## 🔎 How the clock port was identified
The wrapper has input `wb_clk_i` (line 47) and `user_clock2`. The only logic, `debug_regs`, is clocked by `always @(posedge wb_clk_i ...)`, so `wb_clk_i` is the clock to constrain. *(Add your own words.)*

## 📸 Confirmation the constraint was recognised
| Evidence | Screenshot |
|---|---|
| SDC file | *(paste here)* |
| Log / report showing clock `clk`, period 10 | *(paste here)* |

## ✅ Checklist
- [ ] Clock port identified from RTL
- [ ] SDC written
- [ ] Constraint seen in flow output
