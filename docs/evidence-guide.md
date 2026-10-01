# Evidence Guide

The `evidence/` directory contains templates only. They are not claimed to be real lab evidence.

## 1. Command history

Place the actual commands used in:

`evidence/command-history.txt`

Acceptable source, according to the task, is `.bash_history` or a copy-paste of commands used.

For example, after completing the lab, you may inspect the relevant history and copy the commands into this file. Do not include a password.

## 2. Final recursive listing

Place the real output of:

```bash
ls -laR /home/agent007/mission/
```

in:

`evidence/final-ls-laR.txt`

Alternatively, capture the screenshot requested by the task.

## 3. Required explanation

Complete:

`evidence/chmod-ls-useradd-explanation.txt`

with 4–5 lines explaining what `chmod`, `ls -l`, and `useradd` do.

## Evidence integrity

This repository deliberately does not contain fabricated timestamps, permissions, ownership results, command history, or directory listings. Those must come from the actual Kali Linux execution.
