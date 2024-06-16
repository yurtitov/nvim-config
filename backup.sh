#!/bin/bash

# Backup configs to GitHub

printf "\nBackup started\n"

CURRENT_DATE=`date "+%Y-%m-%d %H:%M:%S"`
COMMIT_NAME="Backup from script: ${CURRENT_DATE}"

printf "\n>>> (1/5) git pull\n\n"
git pull -v
printf "\n>>> (2/5) git add\n\n"
git add -A -v
printf "\n>>> (3/5) git commit\n\n"
git commit -m "${COMMIT_NAME}" -v
printf "\n>>> (4/5) git push\n\n"
git push -v
printf "\n>>> (5/5) git status\n\n"
git status -v
printf "\nBackup finished\n"
