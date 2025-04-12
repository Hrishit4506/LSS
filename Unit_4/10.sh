#!/bin/bash

# List of files to compress (you can customize this list)
FILES=("file1.txt" "file2.txt" "file3.txt")

# Folder where compressed files will be stored
DEST_DIR="compressed_output"

# Create destination folder if it doesn't exist
mkdir -p "$DEST_DIR"

# Compress each file and store in the new folder
for file in "${FILES[@]}"; do
    if [ -f "$file" ]; then
        gzip -c "$file" > "$DEST_DIR/${file}.gz"
        echo "✅ Compressed $file into $DEST_DIR/${file}.gz"
    else
        echo "⚠️ File $file does not exist!"
    fi
done

echo "🎉 Compression complete. Original files remain untouched."

