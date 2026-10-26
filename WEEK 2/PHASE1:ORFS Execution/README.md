# Phase 1 — ORFS Execution in GitHub Codespaces

## Goal

Run the workshop's supplied testcase in GitHub Codespaces from setup through final GDS generation. This phase establishes a working cloud reference run that can later be repeated locally.

**Repository:** [vsd-scl180-orfs](https://github.com/vsdip/vsd-scl180-orfs)

## Task 1.1 — Set up the repository

1. Fork the workshop repository to your GitHub account.
2. Open the fork and launch GitHub Codespaces.
3. Wait for the devcontainer to finish building. Do not start the flow while setup is still running.
4. Confirm that the terminal is ready.

### Check the tool versions

Run these commands in the Codespaces terminal:

```bash
openroad -version
yosys -V
python3 --version
make --version
```

- `openroad -version` prints the installed OpenROAD version.
- `yosys -V` prints the Yosys version. Yosys reads the RTL and performs synthesis.
- `python3 --version` confirms Python is available for scripts used by the environment.
- `make --version` confirms GNU Make is available to coordinate the flow.

### Screenshot proof — environment setup

<!-- Add screenshot below. Show the completed devcontainer build and/or terminal version checks. -->
![Codespaces setup and tool versions](screenshots/phase1-codespaces-setup.png)

_Replace the example image path with the real screenshot filename. If the screenshot is not yet available, leave this as a placeholder._

## Task 1.2 — Run the Sky130 testcase in the cloud

1. Navigate to the design directory specified by the workshop repository.
2. Check the repository instructions and configuration before running the flow.
3. Use the provided Makefile and the repository's documented command for the selected testcase.
4. Let the full flow finish. Do not stop it after synthesis or placement.

> **Important:** Use the testcase and configuration actually supplied in the workshop repository. Do not assume a design name or config path unless you have verified it in the repository.

### What the stages mean

| Stage | In simple words | Evidence to save |
|---|---|---|
| Synthesis | Converts the RTL design into a gate-level netlist using the selected cell library. | Log showing synthesis completed |
| Floorplan | Defines the main chip/core area and prepares the design for physical implementation. | Floorplan log snippet |
| Placement | Chooses physical locations for standard cells. | Placement completion log |
| CTS | Builds the clock tree to distribute the clock to sequential cells. | CTS log snippet |
| Routing | Connects the placed cells using metal wires. | Routing completion log |
| GDS generation | Produces the layout database output used for physical-design handoff. | Final GDS output proof |
| Timing analysis | Reports timing quality against the supplied constraints. | WNS/TNS report snippet |

### Screenshot proof — flow stages

<!-- Add one image after each relevant proof, or replace these placeholders with your actual screenshot filenames. -->
**Synthesis completion**

![Synthesis completion](screenshots/phase1-synthesis.png)

**Floorplan**

![Floorplan log](screenshots/phase1-floorplan.png)

**Placement completion**

![Placement completion](screenshots/phase1-placement.png)

**Clock-tree synthesis (CTS)**

![CTS log](screenshots/phase1-cts.png)

**Routing completion**

![Routing completion](screenshots/phase1-routing.png)

**Final GDS generation**

![GDS generation proof](screenshots/phase1-gds.png)

**Timing report (WNS/TNS)**

![Cloud timing report](screenshots/phase1-timing.png)

## Run summary

| Item | Actual result |
|---|---|
| Testcase / design name | _Fill from the repository configuration_ |
| Start time | _Fill in_ |
| Total runtime | _Fill from the completed run_ |
| Synthesis | _Pass / fail + note_ |
| Floorplan | _Pass / fail + note_ |
| Placement | _Pass / fail + note_ |
| CTS | _Pass / fail + note_ |
| Routing | _Pass / fail + note_ |
| GDS generated | _Yes / no; include output path_ |
| WNS | _Copy from actual timing report_ |
| TNS | _Copy from actual timing report_ |

## Errors and fixes

| Error / warning | What it meant (my understanding) | What I changed or checked | Final status |
|---|---|---|---|
| _Paste actual message_ | _Explain simply_ | _Command or fix_ | _Resolved / pending_ |

## Phase 1 completion checklist

- [ ] Devcontainer build completed successfully
- [ ] All four tool-version checks saved
- [ ] Full cloud RTL-to-GDS flow completed
- [ ] Synthesis, floorplan, placement, CTS, routing and GDS proof saved
- [ ] WNS/TNS report saved
- [ ] Runtime and errors/fixes documented

## Key takeaway

This phase shows whether the provided ORFS setup can execute the testcase in a prepared cloud development environment. The saved runtime, logs, and timing values become the reference for the local run in Phase 4.
