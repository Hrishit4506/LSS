#!/bin/bash

# Folder containing compressed files
FOLDER="separate_compression"

# Check if the folder exists
if [ ! -d "$FOLDER" ]; then
    echo "❌ Folder '$FOLDER' does not exist."
    exit 1
fi

# Step: Uncompress each .gz file in the folder
for file in "$FOLDER"/*.gz
do
    gunzip "$file"
    echo "✅ Uncompressed: $file"
done

echo "✅ All .gz files in '$FOLDER' have been uncompressed separately."
