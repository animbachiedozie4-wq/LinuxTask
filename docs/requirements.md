# Requirements Traceability

This document maps the uploaded task requirements to the repository workflow.

| Task requirement | Repository support | Evidence needed |
|---|---|---|
| Create `agent007` with home directory and `/bin/bash` | `commands/lab-commands.sh` | Command history |
| Add `agent007` to `sudo` group | `commands/lab-commands.sh` | Command history |
| Set password and switch to `agent007` | `commands/lab-commands.sh` | Command history |
| Create `/home/agent007/mission/intel/` and `/home/agent007/mission/ops/backup/` | `commands/lab-commands.sh` | Final recursive listing |
| Use `mkdir` and `cd` | Command runbook explicitly includes both | Command history |
| Create `targets.txt`, `routes.txt`, `keys.txt` | Command runbook | Command history/final listing |
| Use `ls`, `ls -l`, `ls -la` and redirect each output to `listing1.txt`, `listing2.txt`, `listing3.txt` | Command runbook | Command history and files in final listing |
| Copy `routes.txt` to `backup/` | Command runbook | Command history/final listing |
| Remove `keys.txt` using `rm` | Command runbook | Command history/final listing |
| Set `targets.txt` permissions: owner rw, group r, others none | `chmod 640` in runbook | `ls -l` evidence |
| Intentionally remove backup `routes.txt` | Command runbook | Command history |
| Recover by copying `routes.txt` from `intel/` to `backup/` | Command runbook | Command history/final listing |
| As root, change ownership of `intel/targets.txt` to another user (e.g. root) | Clearly isolated Step 8 in runbook | Command history + `ls -l` observation |
| Submit command history | Evidence placeholder | Replace with actual history |
| Submit final `ls -laR /home/agent007/mission/` output or screenshot | Evidence placeholder | Replace with actual output/screenshot |
| Submit 4–5 line explanation of `chmod`, `ls -l`, `useradd` | Evidence template | Complete/confirm before submission |

## Source boundary

The workflow is based only on the uploaded task. It does not add grading criteria, extra software, extra users, networking requirements, or additional security controls.
