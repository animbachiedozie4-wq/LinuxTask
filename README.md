# Secure File Management & User Configuration on Kali Linux

## Practical Task Repository

This repository is a GitHub-ready workflow for the uploaded practical task **“Secure File Management & User Configuration on Kali Linux.”**

### Objective

Demonstrate fundamental Linux file-system and user-management commands by creating a secure workspace for `agent007`, organizing files, handling permissions, simulating recovery, and observing ownership.

### Important execution rule

The task states that root must **not** be used for file operations. A new user must be created, and all steps except `useradd` and `usermod` must be performed using `agent007`.

The task also explicitly requires **Step 8** to be performed as root for the ownership change. This repository preserves that explicit requirement rather than adding a different interpretation.

## Repository layout

```text
secure-file-management-agent007/
├── README.md
├── .gitignore
├── docs/
│   ├── requirements.md
│   ├── workflow.md
│   └── evidence-guide.md
├── commands/
│   └── lab-commands.sh
├── scripts/
│   └── verify-final-structure.sh
└── evidence/
    ├── command-history.txt
    ├── final-ls-laR.txt
    └── chmod-ls-useradd-explanation.txt
```

## How to use

1. Work on a Kali Linux system or VM.
2. Read `docs/requirements.md` and `docs/workflow.md`.
3. Execute the commands in `commands/lab-commands.sh` manually or use them as a guided runbook.
4. Do **not** run the entire file blindly as root.
5. Capture the required evidence into `evidence/`.
6. Run `scripts/verify-final-structure.sh` as `agent007` after the lab is complete.
7. Replace the evidence placeholders with the real command history and final output before submission.

## Submission checklist

- [ ] `evidence/command-history.txt` contains the actual commands used.
- [ ] `evidence/final-ls-laR.txt` contains the actual final `ls -laR /home/agent007/mission/` output (or provide the requested screenshot).
- [ ] `evidence/chmod-ls-useradd-explanation.txt` contains a 4–5 line explanation of `chmod`, `ls -l`, and `useradd`.
- [ ] `targets.txt` has owner read/write, group read-only, and no permissions for others (`640`).
- [ ] `routes.txt` exists in `intel/`.
- [ ] `routes.txt` exists in `ops/backup/` after recovery.
- [ ] `keys.txt` has been removed from `intel/`.
- [ ] Step 8 ownership change has been performed as required by the task and observed with `ls -l`.

> Evidence that cannot be generated outside Kali Linux is intentionally left as a placeholder. No command output, username, timestamp, permission state, or ownership result is invented in this repository.
