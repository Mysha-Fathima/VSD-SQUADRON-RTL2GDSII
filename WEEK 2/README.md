# Week 2 — Toolchain Mastery and ORFS Execution (Cloud to Local)

> **Focus:** Build independent RTL-to-GDS execution skills using OpenROAD Flow Scripts (ORFS), first in GitHub Codespaces and then on a local Linux-based environment.

## Week 2 at a glance

| Item | Details |
|---|---|
| Duration | 1 week |
| Main flow | ORFS / OpenROAD |
| Cloud environment | GitHub Codespaces + devcontainer |
| Local environment | Ubuntu 22.04 recommended; Windows users may use VirtualBox + Ubuntu; macOS users may use a suitable Ubuntu VM/WSL-equivalent setup |
| Main testcase | The same Sky130 testcase supplied by the workshop repository |
| Evidence | Terminal screenshots, stage logs, timing reports, and final GDS proof |
| Submission | GitHub repository + Google Document link entered in the tracker sheet |

## Objectives

By the end of Week 2, I aim to be able to:

- [ ] Run the supplied RTL-to-GDS testcase in GitHub Codespaces.
- [ ] Identify the major tools in the devcontainer and explain their roles.
- [ ] Install ORFS and the official OpenROAD toolchain locally.
- [ ] Run the **same testcase** locally and compare its results with the cloud run.
- [ ] Use basic Unix commands and environment variables to inspect files, logs, and errors.
- [ ] Keep clear, reproducible evidence of the work in this repository.

## Progress chart

Update the status and evidence link as work is completed. Do not mark a phase complete until its required evidence is saved.

| Phase | Work area | Key output | Status | Evidence / notes |
|---|---|---|---|---|
| 1 | ORFS in GitHub Codespaces | Cloud RTL-to-GDS run, stage logs, WNS/TNS, runtime | ⬜ Not started | _Add link or note_ |
| 2 | Toolchain understanding | Tool inventory and ORFS flow explanation | ⬜ Not started | _Add link or note_ |
| 3 | Local installation | Local ORFS + official OpenROAD version checks | ⬜ Not started | _Add link or note_ |
| 4 | Local RTL-to-GDS | Local run and cloud/local comparison | ⬜ Not started | _Add link or note_ |
| 5 | Unix and debugging literacy | Command examples, log searches, screenshots | ⬜ Not started | _Add link or note_ |

**Status key:** ⬜ Not started · 🟡 In progress · ✅ Completed · ⚠️ Blocked

## Week 2 workflow

```text
Workshop ORFS repository
        |
        v
Phase 1: Run testcase in GitHub Codespaces
        |
        v
Phase 2: Understand the devcontainer and toolchain
        |
        v
Phase 3: Install ORFS and official OpenROAD locally
        |
        v
Phase 4: Re-run the same testcase locally
        |
        v
Phase 5: Practise Unix commands and debug logs
        |
        v
Compare results, organise evidence, update tracker
```

## Repository and references

- Workshop repository: [vsd-scl180-orfs](https://github.com/vsdip/vsd-scl180-orfs)
- Week 6 target project: [vsdsquadron-soc](https://github.com/vsdip/vsdsquadron-soc)

## Phase documentation

| Phase | README | What it documents |
|---|---|---|
| 1 | [Phase 1 — ORFS Cloud Run](phase-1-orfs-cloud/README.md) | Codespaces setup, tool versions, cloud flow and results |
| 2 | [Phase 2 — Toolchain Understanding](phase-2-toolchain/README.md) | Tool purposes, installation sources and flow architecture |
| 3 | [Phase 3 — Local Installation](phase-3-local-installation/README.md) | Local ORFS and official OpenROAD installation |
| 4 | [Phase 4 — Local RTL-to-GDS](phase-4-local-rtl-to-gds/README.md) | Local execution and cloud/local comparison |
| 5 | [Phase 5 — Unix & Debugging](phase-5-unix-debugging/README.md) | Commands, log inspection and debugging evidence |

## What Week 2 covers

### 1. Cloud execution
Set up the repository in GitHub Codespaces, wait for the devcontainer to finish building, verify the installed tools, and run the provided testcase through the complete RTL-to-GDS flow.

### 2. Toolchain understanding
Read `.devcontainer/Dockerfile` and `.devcontainer/install-openroad.sh`. Record which tools are installed, where each tool comes from, what it does, and where it is used in the flow.

### 3. Local environment
Recreate the environment on a computer you control. Install the workshop ORFS setup and the official OpenROAD tool, then record successful version checks and any installation issues.

### 4. Cloud-versus-local comparison
Run the exact same testcase locally. Compare runtime, WNS, TNS, and whether the GDS output was generated. Explain any differences instead of assuming the results should be identical.

### 5. Unix and debugging skills
Practise navigating folders, inspecting scripts, searching logs, filtering timing violations, and checking environment variables with commands such as `ls`, `cd`, `pwd`, `grep`, `find`, `cat`, `less`, `echo`, and `export`.

## Evidence checklist

- [ ] Codespaces devcontainer build completed
- [ ] Cloud tool-version outputs saved
- [ ] Cloud synthesis, floorplan, placement, CTS, routing, GDS, and timing evidence saved
- [ ] Toolchain mapping table completed in Phase 2
- [ ] Local tool-version checks saved
- [ ] Official OpenROAD local execution and version saved
- [ ] Local synthesis, placement, CTS, routing, GDS, and timing evidence saved
- [ ] Cloud/local comparison completed
- [ ] Unix/log-debugging screenshots saved
- [ ] GitHub repository link added to the workshop tracker
- [ ] Google Document link added to the workshop tracker

## Notes and issues

| Date | Phase | Issue / observation | Action taken | Result |
|---|---|---|---|---|
| YYYY-MM-DD | Phase __ | _Describe what happened_ | _What I tried_ | _Resolved / pending_ |

## Completion statement

When every required phase and evidence item is complete, this repository will demonstrate that I can run the workshop RTL-to-GDS testcase in both cloud and local environments, explain the supporting toolchain, and investigate basic execution or timing issues independently.

> **Accuracy note:** Update statuses, timings, timing metrics, and completion claims only after checking the actual run output. Keep screenshots and logs as proof; do not use placeholder values as results.
