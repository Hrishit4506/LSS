#!/bin/bash

# Step 1: Create the files with dummy content
echo "This is sample content for file1." > file1.txt
echo "Another sample content for file2." > file2.txt

echo "✅ Created file1.txt and file2.txt with dummy content."

# Step 2: Compress the files separately using gzip
echo "📦 Compressing file1.txt..."
gzip -k file1.txt  # -k keeps the original file

echo "📦 Compressing file2.txt..."
gzip -k file2.txt

# Step 3: Confirm compression
echo "✅ Compression complete."
ls -lh file1.txt.gz file2.txt.gz
