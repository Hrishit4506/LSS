#!/bin/bash

# Ask for the zip file name
read -p "Enter the name of the ZIP archive: " zipfile

# Check if the file exists
if [[ ! -f "$zipfile" ]]; then
    echo "File '$zipfile' does not exist!"
    exit 1
fi

echo ""
echo "Compression details for: $zipfile"
echo "============================================================"
echo "Filename               Original    Compressed    Saved(%)"
echo "------------------------------------------------------------"

# Use unzip -l to get original sizes and unzip -v to get compressed sizes
unzip -v "$zipfile" | awk '
    NR > 3 && $1 ~ /^[0-9]/ {
        orig=$3
        comp=$1
        perc=orig == 0 ? 0 : (orig - comp) * 100 / orig
        printf "%-20s %10d %12d %10.2f%%\n", $8, orig, comp, perc
    }
' | sed '$d'
