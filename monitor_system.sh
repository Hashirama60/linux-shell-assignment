#!/bin/bash
# Script Name : monitor_system.sh
# Purpose : Log CPU and memory usage at intervals.
# Author : Ankit
# Date : 2025-11-17
set -e
INTERVAL_SECONDS="${1:-5}"
LOG_FILE="$HOME/system_monitor.log"
while true; do
TIMESTAMP="$(date +'%Y-%m-%d %H:%M:%S')"
echo "Timestamp: $TIMESTAMP" >> "$LOG_FILE"
top -b -n 1 | head -5 >> "$LOG_FILE"
free -h >> "$LOG_FILE"
echo "" >> "$LOG_FILE"
sleep "$INTERVAL_SECONDS"
done
