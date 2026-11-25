# 📘 Week 4 · Phase 1 — Analyze the Top-Level Wrapper

### Which modules and files does `user_project_wrapper` really need?

<div>
  
![Phase](https://img.shields.io/badge/phase-1%20of%206-blue?style=for-the-badge) ![Used](https://img.shields.io/badge/always%20used-1%20leaf-blue?style=for-the-badge) ![Status](https://img.shields.io/badge/status-done-brightgreen?style=for-the-badge) ![RTL](https://img.shields.io/badge/RTL%20files-3-lightgrey?style=for-the-badge) ![Pads](https://img.shields.io/badge/IO%20pads-38-lightgrey?style=for-the-badge)

**Author:** Mysha Fathima · **Period:** November 2026 · **File:** `caravel/verilog/rtl/__user_project_wrapper.v` · branch `add-vsdsquadron-soc-folders`
· [Week 4 home](../README.md) · [Phase 2 →](../Phase2-orfs-setup/README.md) 

</div>

---

## 🎯 Goal
Find out what `__user_project_wrapper.v` really needs before building anything: which modules it instantiates, where their files are, and which macros it depends on.

## 📊 Results at a glance

| Question | Answer |
|---|---|
| Top module | `user_project_wrapper` (file `__user_project_wrapper.v`) |
| Always instantiated | `debug_regs` (`debug_regs.v`, a leaf module, 44 lines) |
| Only with a switch | `user_project_gpio_example` (`GPIO_TESTING`) and `user_project_la_example` (`LA_TESTING`), both off |
| Macro used but not included | `` `MPRJ_IO_PADS `` in `defines.v` = 19 + 19 = **38** |
| Clock port | `wb_clk_i` |

## 🌳 Dependency tree

```
user_project_wrapper                (__user_project_wrapper.v)
├── debug_regs                      (debug_regs.v)   always instantiated, leaf
├── user_project_gpio_example       only if GPIO_TESTING (off)
├── user_project_la_example         only if LA_TESTING (off)
└── `MPRJ_IO_PADS = 38              (defines.v)      not included by the wrapper
```

## 📁 RTL files used

| File | Why it is needed |
|---|---|
| `__user_project_wrapper.v` | Top level with 38 IO pads, wishbone, LA and IRQ ports |
| `debug_regs.v` | The only real logic, clocked by `wb_clk_i` |
| `defines.v` | Defines `MPRJ_IO_PADS` |

## 🔍 How I traced it

I cloned the SoC repo on the branch the task gave.

📸 **SS 1.1 — clone of `vsdsquadron-soc` (branch `add-vsdsquadron-soc-folders`)**
<img width="1090" height="495" alt="image" src="https://github.com/user-attachments/assets/67d1ccf5-2c1f-46ab-8768-6e1467a3a5d9" />


Then I listed the RTL folder to find the wrapper and its neighbours.

```bash
ls caravel/verilog/rtl
```

📸 **SS 1.2 — RTL folder listing**
<img width="1178" height="238" alt="image" src="https://github.com/user-attachments/assets/332b1434-293c-469f-9987-c216dff091e7" />


Next I read the instantiation block (lines 66 to 167) to see which modules are really instantiated and which sit under `` `ifdef ``.

```bash
sed -n '66,167p' caravel/verilog/rtl/__user_project_wrapper.v
```

📸 **SS 1.3 — instantiation block**
<img width="1090" height="770" alt="image" src="https://github.com/user-attachments/assets/d2ec83dd-a935-42c3-a91a-9376db4f79f8" />

The wrapper uses `` `MPRJ_IO_PADS `` but never includes `defines.v`, so I searched for the macro to find its value.

```bash
grep -n "MPRJ_IO_PADS" caravel/verilog/rtl/defines.v
```

📸 **SS 1.4 — `MPRJ_IO_PADS` definition (= 38)**
<img width="1090" height="673" alt="image" src="https://github.com/user-attachments/assets/21f0ac90-c0ea-48cc-bf31-17802903cbd2" />


## 🧩 Module hierarchy in plain words
The wrapper is a shell around the user project. Only `debug_regs` is always inside it. The two example blocks are compiled only when their switches are defined, so for this flow they don't exist. The wrapper also has two behaviours: normally `io_out = io_in`, but under `SIM` it sets `io_out = 0` and `io_oeb = 0`. That detail turned out to matter in Phase 6.

<img width="1090" height="666" alt="image" src="https://github.com/user-attachments/assets/46371220-409b-4eea-aec1-bac2f0251485" />

## 🛠️ Issues and solutions

| # | Problem | Fix |
|---|---|---|
| 1 | `` `MPRJ_IO_PADS `` is used without an include | Pass `-DMPRJ_IO_PADS=38` in the config (Phase 2) |
| 2 | Unclear which modules are really compiled | Checked every `` `ifdef `` guard |

## ✅ Completion checklist
- [x] Instantiated modules identified
- [x] Hierarchy traced
- [x] RTL files located
- [x] Dependency tree documented

## 🗃️ Evidence
[`evidence/`](evidence/): wrapper, `debug_regs.v`, `defines.v`, `instantiations.txt`, `mprj_io_pads_define.txt`, `rtl_listing.txt`

## 💡 What I learned
Hidden dependencies live in macros and `` `ifdef `` blocks, so reading the instantiation block first saves a lot of guessing.

## 📝 Summary of this phase
Before touching any tool, I read the wrapper to find out what it really needs. Only one real block, `debug_regs`, is always inside it. The two example blocks are switched off by default, and the pad count comes from a macro in `defines.v` that the wrapper doesn't include. So I now know exactly three RTL files are needed and one macro has to be passed to the flow.
