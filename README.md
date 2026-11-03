# 🚀 VSD Squadron RTL-to-GDSII Program

<p align="center">
  <img src="https://img.shields.io/badge/Program-VSD%20Squadron-blue?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Domain-VLSI%20Physical%20Design-purple?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Focus-RTL--to--GDSII-orange?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Progress-Week%203%20Completed-brightgreen?style=for-the-badge" />
</p>

<p align="center">
  <b>Physical Design Fundamentals • Open-Source EDA • RTL Workflows • Verification</b>
</p>

---

<p align="center">
   <b><img width="566" height="365" alt="image" src="https://github.com/user-attachments/assets/8adeb88e-3d9e-450b-8afd-12119ef6a285" /></b>
</p>

## 📌 About This Repository

Welcome to my **VSD Squadron RTL-to-GDSII Program** repository.

This repository documents my hands-on learning journey in VLSI Physical Design, covering OpenLane Physical Design fundamentals, ORFS toolchain setup, RTL-to-GDSII workflows, and block-level verification.

The work is structured week-wise and phase-wise to provide an organized record of technical learning, practical activities, diagrams, evidence, and documentation.

This repository serves as a technical portfolio showcasing my exposure to open-source ASIC design workflows and VLSI implementation concepts.

---

## 🎯 Program Objectives

- Understand the RTL-to-GDSII implementation flow.
- Develop foundational knowledge of ASIC Physical Design.
- Explore OpenLane and OpenROAD-based workflows.
- Understand ORFS toolchain configuration and execution.
- Explore standalone and Caravel-based testing.
- Study block-level verification concepts.
- Develop Linux, Unix, Git, and documentation skills.
- Maintain a structured technical learning portfolio.

---

## 📅 Weekly Progress Tracker

| Week | Topic | Key Areas | Status |
|---|---|---|---|
| Week 1 | OpenLane Physical Design Workshop | Physical Design fundamentals, SKY130, RTL2GDS, PNR | ✅ Completed |
| Week 2 | Toolchain Mastery and ORFS — Cloud to Local | Cloud ORFS, toolchain setup, local installation, RTL2GDS run, Unix debugging | ✅ Completed |
| Week 3 | Block-Level Verification | Standalone verification, standalone tests, Caravel tests, verification flow, documentation | ✅ Completed |

---

## 📚 Weekly Documentation

<details>
<summary><b>📘 Week 1 — OpenLane Physical Design Workshop</b></summary>

**Focus:** Physical Design fundamentals and OpenLane workflow.

[➡️ View Week 1 README](<WEEK 1-openlane-workshop/README.md>)

</details>

<details>
<summary><b>📘 Week 2 — Toolchain Mastery and ORFS</b></summary>

**Focus:** ORFS execution, toolchain understanding, local setup, RTL-to-GDSII run, and Unix debugging.

[➡️ View Week 2 README](<WEEK 2/README.md>)

### Week 2 Phases

| Phase | Topic | Status |
|---|---|---|
| Phase 1 | Cloud ORFS | ✅ Completed |
| Phase 2 | Toolchain Understanding | ✅ Completed |
| Phase 3 | Local Installation | ✅ Completed |
| Phase 4 | Local RTL-to-GDSII Run | ✅ Completed |
| Phase 5 | Unix Debugging | ✅ Completed |

</details>

<details>
<summary><b>📘 Week 3 — Block-Level Verification</b></summary>

**Focus:** Standalone verification, standalone tests, Caravel tests, verification flow, and documentation.

[➡️ View Week 3 README](<WEEK 3/README.md>)

### Week 3 Phases

| Phase | Topic | Status |
|---|---|---|
| Phase 1 | Standalone Verification | ✅ Completed |
| Phase 2 | Standalone Tests | ✅ Completed |
| Phase 3 | Caravel Tests | ✅ Completed |
| Phase 4 | Verification Flow | ✅ Completed |
| Phase 5 | Documentation | ✅ Completed |

</details>

---

## 🔄 RTL-to-GDSII Implementation Flow

The RTL-to-GDSII process represents the transformation of a digital hardware design into a physical layout database.

```mermaid
flowchart TD
    A["📝 RTL Design"] --> B["🔍 Functional Verification"]
    B --> C["⚙️ Logic Synthesis"]
    C --> D["📐 Floorplanning"]
    D --> E["🔌 Power Planning"]
    E --> F["📍 Placement"]
    F --> G["⏱️ Clock Tree Synthesis"]
    G --> H["🛣️ Routing"]
    H --> I["🔎 Physical Verification"]
    I --> J["📦 GDSII Generation"]
```

### Major Design Stages

| Stage | Description |
|---|---|
| RTL Design | Describe digital hardware functionality |
| Functional Verification | Check design behavior |
| Logic Synthesis | Convert RTL into a gate-level netlist |
| Floorplanning | Define core area and design arrangement |
| Power Planning | Establish the power distribution network |
| Placement | Position standard cells |
| Clock Tree Synthesis | Build the clock distribution network |
| Routing | Connect design components |
| Physical Verification | Check layout correctness |
| GDSII Generation | Produce the physical layout database |

---

## 🛠️ Tools & Technologies

| Category | Tools / Technologies |
|---|---|
| Physical Design | OpenLane, OpenROAD |
| RTL-to-GDSII Flow | ORFS |
| Process Design Kit | SKY130 |
| Layout & Verification | Magic, Netgen |
| Circuit Design | Xschem, SPICE |
| Test Environment | Caravel |
| Operating System | Linux / Unix |
| Hardware Description | Verilog / RTL |
| Scripting | Tcl, Shell |
| Version Control | Git, GitHub |
| Documentation | Markdown, Mermaid |

---

## 📈 Skills & Technical Exposure

| Technical Knowledge | Practical Exposure |
|---|---|
| ASIC Physical Design fundamentals | Open-source EDA workflows |
| RTL-to-GDSII concepts | Toolchain configuration |
| OpenLane and ORFS | Linux command-line usage |
| Floorplanning and PNR concepts | Workflow execution |
| Block-Level Verification | Standalone and Caravel test organization |
| Physical Verification concepts | Technical documentation |
| Git and GitHub | Repository organization and version control |

---

## 📸 Documentation & Evidence

The repository maintains technical documentation and supporting evidence in the relevant weekly and phase-wise folders.

Documentation includes:

- 📖 Weekly README files
- 📂 Phase-wise README files
- 📊 Workflow diagrams
- 📷 Screenshots and execution evidence
- 💻 Supporting scripts
- 📈 Progress tables

This structure allows individual activities to be reviewed independently while preserving the overall program learning journey.

---

## 🏆 Learning Journey

```mermaid
flowchart LR
    A["Week 1<br/>OpenLane Physical Design"] --> B["Week 2<br/>ORFS Toolchain Mastery"]
    B --> C["Week 3<br/>Block-Level Verification"]
    C --> D["🚀 Further VLSI Learning"]
```

---

## 👩‍💻 Author

<p align="center">
  <b>Mysha Fathima</b><br/>
  B.E. — Electronics & Communication Engineering<br/>
  Aspiring VLSI Physical Design Engineer
</p>

<p align="center">
  <a href="https://github.com/Mysha-Fathima">
    <img src="https://img.shields.io/badge/GitHub-Mysha--Fathima-black?style=for-the-badge&logo=github" />
  </a>
</p>

---

## 🙏 Acknowledgment

I would like to thank **VLSI System Design (VSD)** for providing the opportunity to learn and explore open-source ASIC design and VLSI Physical Design workflows through the VSD Squadron RTL-to-GDSII Program.

---

<p align="center">
  <b>🔬 Learning • Implementing • Verifying • Documenting</b><br/>
  Building a strong foundation in VLSI Physical Design.
</p>
