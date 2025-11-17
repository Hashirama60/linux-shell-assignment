#!/bin/bash
# Script Name : auto_download.sh
# Purpose : Download a file using wget into a predefined folder.
# Author : Ankit
# Date : 2025-11-17
set -e
DOWNLOAD_DIR="$HOME/auto_downloads"
FILE_URL="$1"
if [ -z "$FILE_URL" ]; then
echo "Usage: $0 <file_url>"
exit 1
fi
mkdir -p "$DOWNLOAD_DIR"
cd "$DOWNLOAD_DIR"
wget -q --show-progress "$FILE_URL"
echo "Download complete."
