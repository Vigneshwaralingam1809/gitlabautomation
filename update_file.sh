#!/bin/bash
# Get the current date and time
DATE=$(date +"%Y-%m-%d %H:%M:%S")

# Append a new line to the daily log file
echo "Daily automated push on: $DATE" >> daily_log.txt

# Git commands to commit and push
git config user.name "github-actions[bot]"
git config user.email "github-actions[bot]@users.noreply.github.com"

git add daily_log.txt
git commit -m "Automated daily log update for $DATE"
git push
