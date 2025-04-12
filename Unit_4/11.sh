#!/bin/bash

# Folder where compressed files are located
SOURCE_DIR="compressed_output"

# Folder where uncompressed files will be placed
DEST_DIR="uncompressed_output"
mkdir -p "$DEST_DIR"

# Loop through each .gz file in the source folder
for gz_file in "$SOURCE_DIR"/*.gz; do
    if [ -f "$gz_file" ]; then
        # Extract filename without .gz
        filename=$(basename "$gz_file" .gz)

        # Uncompress using -c to keep original and redirect to new folder
        gunzip -c "$gz_file" > "$DEST_DIR/$filename"
        echo "Uncompressed $gz_file to $DEST_DIR/$filename"
    fi
done
