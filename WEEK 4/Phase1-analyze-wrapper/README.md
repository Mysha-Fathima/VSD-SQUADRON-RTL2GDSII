<div align="center">

# 🔍 Week 4 · Phase 1 — Analyze the Top-Level Wrapper

### Which modules and files does `user_project_wrapper` really need?

![Phase](https://img.shields.io/badge/phase-1%20of%206-blue?style=for-the-badge)
![Status](https://img.shields.io/badge/status-done-brightgreen?style=for-the-badge)
![RTL files](https://img.shields.io/badge/RTL%20files-3-lightgrey?style=for-the-badge)

**Author:** Mysha Fathima · **Period:** November 2026
**File:** `caravel/verilog/rtl/__user_project_wrapper.v` · branch `add-vsdsquadron-soc-folders`

</div>

---

## 🗂️ Navigation
[Week 4 home](../README.md) · Phase 1 · [Phase 2 ➡](../Phase2-orfs-setup/README.md)

## 🌳 Dependency tree
```text
user_project_wrapper            (__user_project_wrapper.v)
 └── debug_regs                 (debug_regs.v), always instantiated
     [optional, OFF by default]
      ├── user_project_gpio_example   (only if GPIO_TESTING is defined)
      └── user_project_la_example     (only if LA_TESTING is defined)
```

## 📄 RTL files used
| File | Role |
|---|---|
| `__user_project_wrapper.v` | Top module (module name: `user_project_wrapper`) |
| `debug_regs.v` | Leaf module, no sub-modules, no includes |
| `defines.v` | Defines `MPRJ_IO_PADS` = 19 + 19 = 38; the wrapper does not include it, so the flow must be given it |

## 🧠 Explanation of the hierarchy
*(Write 3-4 lines in your own words: what the wrapper does, why the two example modules are excluded, why defines.v is needed.)*

## 🧰 Commands used
| Command | Why |
|---|---|
| `cat -n file` | Print the file with line numbers |
| `sed -n '66,167p' file` | Print only lines 66 to 167 |
| `grep -rn "module debug_regs" .` | Find which file defines a module |
| `grep -rn "define MPRJ_IO_PADS" .` | Find where a macro is defined |

## 📸 Screenshots
| Evidence | Screenshot |
|---|---|
| RTL folder listing | *(paste here)* |
| Instantiation block (`debug_regs debug(`) | *(paste here)* |
| `MPRJ_IO_PADS` definition in `defines.v` | *(paste here)* |

## ⚠️ Observations
- Without `SIM` defined, the wrapper runs `assign io_out = io_in;` and never drives `io_oeb`.

## ✅ Checklist
- [x] Instantiated modules identified
- [x] Hierarchy traced
- [x] RTL files located
- [x] Macro dependency found
