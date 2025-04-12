#!/bin/bash

echo "==========================================="
echo "📁 Disk Space Used by Individual Files"
echo "==========================================="

# Display size of all files in current directory and subdirectories
find . -type f -exec du -h {} + 2>/dev/null

echo ""
echo "==========================================="
echo "📦 Total Disk Space Used by All Files"
echo "==========================================="

# Total size of all files
total_size=$(find . -type f -exec du -b {} + | awk '{total += $1} END {printf "%.2f MB\n", total / 1024 / 1024}')
echo "Total size: $total_size"

# Total number of files
file_count=$(find . -type f | wc -l)
echo "Total file count: $file_count"
