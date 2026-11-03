#!/bin/bash
source /workspaces/week3_env.sh
T=/workspaces/vsdsquadron-soc/caravel_mgmt_soc_litex/verilog/dv/tests-caravel/$1
OUT="/workspaces/VSD-SQUADRON-RTL2GDSII/WEEK 3/Phase3-caravel-tests/evidence"
mkdir -p "$OUT"
cd "$T" || exit 1
make clean > /dev/null 2>&1
make CPUFLAGS_vexriscv="-march=rv32i_zicsr -mabi=ilp32 -D__vexriscv__" > "$OUT/$1_run.log" 2>&1
echo "=== $1 ==="
grep -i "Monitor:\|error" "$OUT/$1_run.log" | tail -5
