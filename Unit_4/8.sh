#!/bin/bash

# Folder name
FOLDER="separate_compression"

# Step 1: Create the folder
mkdir -p "$FOLDER"

# Step 2: Create sample files in the folder
echo "This is file A" > "$FOLDER/fileA.txt"
echo "This is file B" > "$FOLDER/fileB.txt"
echo "This is file C" > "$FOLDER/fileC.txt"

echo "✅ Created folder '$FOLDER' with files."

# Step 3: Compress each file individually using gzip
for file in "$FOLDER"/*.txt
do
    gzip "$file"
    echo "🗜️ Compressed: $file"
done

echo "✅ All files in '$FOLDER' compressed separately with .gz extension."
