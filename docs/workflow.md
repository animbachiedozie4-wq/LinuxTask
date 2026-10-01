# Execution Workflow

## Phase 1 — Read and prepare

- Use Kali Linux.
- Start with the account/session required to perform user creation.
- Review `commands/lab-commands.sh` before execution.
- The task explicitly requires file operations to be performed as `agent007`, except for the user-management commands and the explicitly required Step 8 ownership change.

## Phase 2 — Create the user

Run the required `useradd` command and add `agent007` to the `sudo` group.

Set the password for `agent007`, then switch to that account.

## Phase 3 — Build the workspace

As `agent007`:

```text
/home/agent007/mission/
├── intel/
└── ops/
    └── backup/
```

Use `mkdir` and `cd`, as the task requests.

## Phase 4 — Create and list files

Inside `intel/`:

```text
targets.txt
routes.txt
keys.txt
```

Run:

```bash
ls
ls -l
ls -la
```

Redirect the three outputs to:

```text
listing1.txt
listing2.txt
listing3.txt
```

Keep the redirection exactly associated with the corresponding listing command.

## Phase 5 — Copy and remove

Copy `routes.txt` into `ops/backup/`.

Remove `keys.txt` from `intel/` with `rm`.

## Phase 6 — Permissions

Set `targets.txt` to:

- owner: read + write
- group: read
- others: no permissions

The corresponding symbolic mode is `u=rw,g=r,o=` and the octal mode is `640`.

Verify using `ls -l`.

## Phase 7 — Error simulation and recovery

First remove the backup copy of `routes.txt`.

Then copy the `routes.txt` file from `intel/` back into `ops/backup/`.

This demonstrates the requested `cp` recovery step.

## Phase 8 — Ownership change

The task explicitly says:

1. As root, change ownership of `intel/targets.txt` to another user (for example `root`).
2. Switch back to `agent007`.
3. Observe the result with `ls -l`.

This is the only workflow section intentionally requiring root after the initial user-management operations because the uploaded task explicitly requires it.

## Phase 9 — Evidence capture

Capture:

1. Actual command history.
2. Actual final output of:

```bash
ls -laR /home/agent007/mission/
```

3. A 4–5 line explanation of `chmod`, `ls -l`, and `useradd`.

Do not fabricate outputs in the evidence files.
