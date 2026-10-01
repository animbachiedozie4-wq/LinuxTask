#!/usr/bin/env bash
# Secure File Management & User Configuration on Kali Linux
# This is a GUIDED command list based strictly on the uploaded task.
# Do not execute the whole file blindly as one shell session.
#
# STEP 1 — User creation / user management
# These are the task's explicitly privileged user-management operations.
sudo useradd -m -s /bin/bash -G sudo agent007
sudo passwd agent007
#
# STEP 2 — Switch to the new user
su - agent007
#
# From this point, perform the file/workspace operations as agent007.
#
# STEP 3 — Workspace
mkdir -p /home/agent007/mission/intel
mkdir -p /home/agent007/mission/ops/backup
cd /home/agent007/mission
cd intel
#
# STEP 4 — Create files and produce the three requested listings
touch targets.txt routes.txt keys.txt
ls > listing1.txt
ls -l > listing2.txt
ls -la > listing3.txt
#
# STEP 5 — Copy and remove
cp routes.txt /home/agent007/mission/ops/backup/
rm keys.txt
#
# STEP 6 — Permissions
chmod 640 targets.txt
ls -l targets.txt
#
# STEP 7 — Simulate an error and recover
rm /home/agent007/mission/ops/backup/routes.txt
cp /home/agent007/mission/intel/routes.txt /home/agent007/mission/ops/backup/
#
# STEP 8 — Advanced ownership
# The uploaded task explicitly requires this one operation as root.
# First leave agent007 if necessary, then run:
sudo chown root:root /home/agent007/mission/intel/targets.txt
# Switch back to agent007 and observe:
ls -l /home/agent007/mission/intel/targets.txt
#
# SUBMISSION EVIDENCE
# Capture actual command history, then:
ls -laR /home/agent007/mission/
#
# IMPORTANT:
# The exact output is environment-dependent and must be captured from the
# student's Kali Linux system. Do not replace it with invented output.
