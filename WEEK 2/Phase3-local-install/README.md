# Phase 3: Local Installation
 
**Goal:** To build the same working environment myself, from a clean Linux machine, instead of relying on the ready-made cloud devcontainer. Then build the official OpenROAD from source.
 
---
 
## 1. My local environment
 
My laptop (Windows 10, 8 GB RAM, very little free space on the system drive) cannot compile OpenROAD comfortably. With my faculty's permission, I used a **fresh GitHub Codespace created from this repository** as the local Linux machine. It starts completely empty, so every tool had to be installed by me.
 
| Property | Value |
|---|---|
| OS | Ubuntu **24.04.5 LTS** (the cloud devcontainer used 22.04) |
| CPU cores | 4 (`nproc`) |
| RAM | 15 GB (`free -h`) |
| Disk | 32 GB, about 19 GB free at the start (`df -h`) |
| Starting point | No OpenROAD, Yosys or KLayout installed |
 
> 📸 **Screenshot:** `cat /etc/os-release`, `nproc`, `free -h`, `df -h /workspaces` `which openroad yosys klayout` (empty) and `openroad -version` (command not found), which proves a clean start
><img width="1090" height="1009" alt="image" src="https://github.com/user-attachments/assets/21478382-de1b-4756-b798-cf0e5208bbd7" />

•	cat /etc/os-release shows which Ubuntu version this is. Your Dockerfile used 22.04, so note whether this one matches.
•	nproc gives the number of CPU cores.
•	free -h gives total and free memory (-h = human readable).
•	df -h gives disk space (df = disk free). You want at least 20 GB free for the OpenROAD build
 
---
 
## 2. Task 3.1: Install ORFS and its tools locally
 
### Steps
 
| Step | What I did | Why |
|---|---|---|
| 1 | Cloned my fork: `git clone https://github.com/Mysha-Fathima/vsd-scl180-orfs.git` | Gets the ORFS scripts, designs and platforms |
| 2 | Read the package list in `.devcontainer/Dockerfile` | The Dockerfile is the recipe for the cloud setup |
| 3 | Installed system packages with `sudo apt-get install` (wget, curl, git, git-lfs, make, python3 and libraries, build-essential, cmake, tcl, tcllib, ...) | A fresh Ubuntu has none of the build tools |
| 4 | Installed **Yosys** from the OSS CAD Suite release `2025-10-31` (same as the Dockerfile) into `/opt` and added it to `PATH` | Keeps the synthesis tool identical to the cloud run |
| 5 | Installed **KLayout** with `sudo apt-get install klayout` | Needed for the GDS merge |
| 6 | Ran `.devcontainer/install-openroad.sh` to install the prebuilt OpenROAD | Same method as the cloud setup |
 
> 📸 **Screenshot:** `git lfs version`, Dockerfile package block, and the `apt-get` install finishing
><img width="1090" height="845" alt="image" src="https://github.com/user-attachments/assets/15688f02-5d6e-4b19-b6ea-b011c5f60fb0" />
><img width="854" height="153" alt="image" src="https://github.com/user-attachments/assets/62112462-8958-4ca0-a317-4b28156f4142" />

> 📸 **Screenshot:** Yosys download and `which yosys`, `yosys -V`
><img width="1028" height="176" alt="image" src="https://github.com/user-attachments/assets/b5ac3b5b-4c23-4f77-8ee6-2181e6219748" />

> 📸 **Screenshot:** KLayout install and `klayout -v`
><img width="1090" height="626" alt="image" src="https://github.com/user-attachments/assets/69a3cda9-acf6-4a42-a106-f9765677f7bc" />

### Problem solved on the way: OpenROAD would not start
 
After the install script ran, `openroad -version` failed:
 
```text
openroad: error while loading shared libraries: libtclreadline-2.3.8.so:
cannot open shared object file: No such file or directory
```
 
| | |
|---|---|
| **Cause** | The prebuilt binary was made for Ubuntu 22.04, but this machine runs 24.04. Two libraries (`tcl-tclreadline`, `libqt5charts5`) were simply not installed. Two others (`libyaml-cpp.so.0.7`, `libpython3.10.so.1.0`) do not exist in 24.04's repositories |
| **How I found it** | The install script's own check listed four missing libraries, and `ldd /opt/openroad/bin/openroad \| grep "not found"` confirmed them |
| **Fix** | Installed the first two with `apt-get`. Downloaded the other two `.deb` files from the Ubuntu 22.04 archive, unpacked them with `dpkg -x`, copied them into `/opt/openroad/lib/`, then ran `sudo ldconfig` |
| **Check** | `ldd` showed nothing missing and `openroad -version` printed `v2.0-28075-g0f99689f45` |
 
> 📸 **Screenshot:** the error message with the `[ERROR] Missing shared libraries` list
><img width="1090" height="623" alt="image" src="https://github.com/user-attachments/assets/35ef19a5-4cbd-4107-87a2-9719dc9a6b3d" />

> 📸 **Screenshot:** `ldd ... \| grep "not found"` after installing the first two libraries, then the `.deb` download and `dpkg -x` steps
><img width="1090" height="585" alt="image" src="https://github.com/user-attachments/assets/ef7b3a25-b904-4068-ba85-975387743f41" />

> 📸 **Screenshot:** `openroad -version` working
><img width="1090" height="621" alt="image" src="https://github.com/user-attachments/assets/ab58df87-8cbd-42a8-b562-c31c22b5365d" />
 
### Verification (required proof)
 
```bash
which openroad yosys klayout python3 make git
openroad -version
yosys -V
klayout -v
echo $PATH
```
 
| Tool | Path | Version |
|---|---|---|
| OpenROAD | `/usr/local/bin/openroad` | `v2.0-28075-g0f99689f45` |
| Yosys | `/opt/oss-cad-suite/bin/yosys` | `0.58+94` |
| KLayout | `/usr/bin/klayout` | `0.28.16` |
| Python | `/home/codespace/.python/current/bin/python3` | `3.14.2` |
| Make | `/usr/bin/make` | `GNU Make 4.3` |
| Git | `/usr/local/bin/git` | `2.55.0` (git-lfs `3.8.0`) |
 
Differences from the cloud run to remember: **OpenROAD and Yosys are identical**, KLayout is **0.28.16 instead of 0.30.9**, and Python resolves to the Codespace's own 3.14 instead of 3.10.
 
> 📸 **Screenshot:** the verification commands and `echo $PATH`
> <img width="1090" height="614" alt="image" src="https://github.com/user-attachments/assets/342f484b-d40c-452b-97ea-e49391e28945" />

 
Install log: [openroad_install.log](evidence/openroad_install.log)
 
---
 
## 3. Task 3.2: Build the official OpenROAD from source
 
I followed the current official OpenROAD build page, which now uses **Bazel**.
 
### Commands
 
```bash
cd /workspaces
git clone --recursive --depth 1 --shallow-submodules https://github.com/The-OpenROAD-Project/OpenROAD.git
cd OpenROAD
sudo ./etc/DependencyInstaller.sh -base
./etc/DependencyInstaller.sh -common -local
nohup ./etc/Build.sh -no-gui -threads=3 -prefix=/workspaces/openroad-install > build_console.log 2>&1 &
```
 
| Part | Why |
|---|---|
| `--depth 1 --shallow-submodules` | Downloads only the latest source, which saves disk space and time |
| `DependencyInstaller.sh -base` | System libraries through `apt` |
| `DependencyInstaller.sh -common -local` | Installs `bazelisk` (the Bazel launcher) |
| `Build.sh -no-gui` | Builds the command-line OpenROAD only, which is faster |
| `-threads=3` | Uses 3 of 4 cores so the machine does not run out of memory |
| `-prefix=...` | Installs into its own folder, so the prebuilt OpenROAD from 3.1 is not overwritten |
| `nohup ... &` | Keeps the build running in the background |
 
> 📸 **Screenshot:** the clone finishing and `ls` of the OpenROAD folder
><img width="1090" height="563" alt="image" src="https://github.com/user-attachments/assets/f8e95672-63d0-4d10-a329-489e24d003f3" />

> 📸 **Screenshot:** the dependency installer output (Bazel installed)
><img width="1090" height="429" alt="image" src="https://github.com/user-attachments/assets/12899f54-04ec-43d4-9409-c00bab899688" />
><img width="1090" height="395" alt="image" src="https://github.com/user-attachments/assets/3e1e8dbe-4fb6-421d-b078-dde303877c03" />

> 📸 **Screenshot:** build progress lines (for example `[10,752 / 15,628] Compiling ...`)
> <img width="1090" height="348" alt="image" src="https://github.com/user-attachments/assets/9c8b8566-79a4-4f02-899f-00d9251eb2a2" />

 
### Build facts
 
| Item | Value |
|---|---|
| Build system | Bazel 9.2.0 (through `bazelisk`) |
| Build actions | 15,628 |
| Duration | about 1 hour |
| Disk used | about 9 GB (free space fell from 12 GB to 2.6 GB) |
| Peak memory in use | about 4.7 GB of 15 GB |
| Result | `OpenROAD binary installed to /workspaces/openroad-install` |
 
### Verification
 
```bash
/workspaces/openroad-install/bin/openroad -version
/workspaces/openroad-install/bin/openroad -help | head -15
```
 
| Check | Result |
|---|---|
| `-version` | `7c83752` (short commit hash of the source build) |
| `-help` | Prints options, including a `-web` viewer that the older prebuilt binary lacks |
 
The version looks different from the prebuilt `v2.0-...` string because I cloned only the latest commit (`--depth 1`), so no release tag history was available to the build.
 
> 📸 **Screenshot:** `-version` and `-help` of the source-built binary
><img width="1090" height="602" alt="image" src="https://github.com/user-attachments/assets/0934091e-4525-4af5-834b-7338bdfdb370" />

> 📸 **Screenshot:** the last lines of the build log ("OpenROAD binary installed to ...")
> <img width="800" height="220" alt="image" src="https://github.com/user-attachments/assets/69ec6f79-ee4f-4170-a531-ca36f26da2c4" />

 
### Warnings and errors in the build log
 
```bash
grep -ci "warning" openroad_build.log   # 5
grep -ci "error" openroad_build.log     # 2
```
 
| Finding | What it is |
|---|---|
| 5 warnings | The same message five times: a Bazel/Python notice that the package hub name `pypi` (module `pybind11_abseil`) is reserved and will be renamed in a future release. Harmless |
| 2 "errors" | Not real errors. `grep` matched the word in the names `strerror_r` (an autoconf check) and `glpk/error.pic.o` (a file being compiled) |
| Real errors | **None** |
 
> 📸 **Screenshot:** the `grep -ci` counts and the warning lines
> <img width="1090" height="545" alt="image" src="https://github.com/user-attachments/assets/45d4235a-c176-4087-8455-dc3000694098" />

 
Evidence files: [openroad_build.log](evidence/openroad_build.log) · [openroad_source_version.txt](evidence/openroad_source_version.txt) · [openroad_source_help.txt](evidence/openroad_source_help.txt) · [deps_base.log](evidence/deps_base.log)
 
---
 
## 4. Prebuilt vs source-built OpenROAD
 
| | Prebuilt (Task 3.1) | Built from source (Task 3.2) |
|---|---|---|
| How installed | Script downloads a 55 MB tarball | Compiled locally with Bazel |
| Version string | `v2.0-28075-g0f99689f45` | `7c83752` |
| Time taken | A few minutes | About 1 hour |
| Needed OS fixes | Yes (missing 22.04 libraries) | No, built for this OS |
| Location | `/usr/local/bin/openroad` | `/workspaces/openroad-install/bin/openroad` |
| Used for the Phase 4 run | Yes (matches the cloud version) | Verified, not used for the comparison |
 
---
 
## 5. Checklist
 
- [x] Clean Linux machine prepared and checked
- [x] ORFS fork cloned
- [x] System dependencies installed from the Dockerfile list
- [x] Yosys installed (same version as cloud)
- [x] KLayout installed
- [x] OpenROAD installed and made to run (library fix)
- [x] `which`, `--version` and `PATH` verified
- [x] Official OpenROAD cloned and built from source with Bazel
- [x] Built binary verified with `-version` and `-help`
- [x] Build log checked for warnings and errors
## 6. What I learned
 
- A tool built on one Ubuntu version may need extra libraries on another. `ldd` shows exactly what is missing.
- Reading the error message literally usually points straight at the fix.
- The official build instructions change over time (OpenROAD moved to Bazel), so always read the current documentation.
- Keep large build folders outside the repo you push.
## Key takeaway

This phase confirms that the required tools are available locally and that I can identify which OpenROAD executable my terminal is using. Any environment-specific issue should be recorded so it can be reproduced or debugged later.
