#!/bin/bash
# Script Name : backup_dir.sh
# Purpose : Backup a specified directory into a backup folder
# with a timestamp.
# Author : Ankit
# Date : 2025-11-17
set -e
SOURCE_DIR="${1:-$HOME/Documents}"
BACKUP_PARENT_DIR="$HOME/backups"
TIMESTAMP="$(date +'%Y%m%d_%H%M%S')"
BACKUP_DIR="${BACKUP_PARENT_DIR}/backup_${TIMESTAMP}"
if [ ! -d "$SOURCE_DIR" ]; then
echo "Error: Source directory does not exist."
exit 1
fi
mkdir -p "$BACKUP_PARENT_DIR"
mkdir -p "$BACKUP_DIR"
cp -a "$SOURCE_DIR"/. "$BACKUP_DIR"/
echo "Backup completed at: $BACKUP_DIR"
