#!/usr/bin/env bash
set -u

ROOT="/home/agent007/mission"
INTEL="$ROOT/intel"
BACKUP="$ROOT/ops/backup"

echo "== Final structure verification =="
echo "Checking: $ROOT"
echo

fail=0

check_dir() {
    if [ -d "$1" ]; then
        echo "OK   directory: $1"
    else
        echo "FAIL directory: $1"
        fail=1
    fi
}

check_file() {
    if [ -f "$1" ]; then
        echo "OK   file:      $1"
    else
        echo "FAIL file:      $1"
        fail=1
    fi
}

check_absent() {
    if [ ! -e "$1" ]; then
        echo "OK   absent:    $1"
    else
        echo "FAIL present:   $1"
        fail=1
    fi
}

check_dir "$ROOT"
check_dir "$INTEL"
check_dir "$ROOT/ops"
check_dir "$BACKUP"

check_file "$INTEL/targets.txt"
check_file "$INTEL/routes.txt"
check_file "$INTEL/listing1.txt"
check_file "$INTEL/listing2.txt"
check_file "$INTEL/listing3.txt"
check_file "$BACKUP/routes.txt"

check_absent "$INTEL/keys.txt"

echo
echo "== targets.txt permissions =="
ls -l "$INTEL/targets.txt"

mode="$(stat -c '%a' "$INTEL/targets.txt" 2>/dev/null || true)"
if [ "$mode" = "640" ]; then
    echo "OK   targets.txt mode is 640"
else
    echo "WARN targets.txt mode is '${mode:-unknown}', expected 640 from the task"
    fail=1
fi

echo
echo "== Requested final recursive listing =="
ls -laR "$ROOT"

echo
if [ "$fail" -eq 0 ]; then
    echo "Verification completed without detected failures."
else
    echo "Verification detected one or more issues. Review the output above."
fi

exit "$fail"
