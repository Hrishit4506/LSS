#!/bin/bash

# Step 1: Check if compressed files exist
if [[ -e file1.txt.gz && -e file2.txt.gz ]]; then
    echo "📂 Found file1.txt.gz and file2.txt.gz"

    # Step 2: Uncompress the files
    echo "🧩 Uncompressing file1.txt.gz and file2.txt.gz..."
    gzip -d file1.txt.gz file2.txt.gz

    echo "✅ Uncompression complete."
    ls -lh file1.txt file2.txt
else
    echo "❌ One or both .gz files not found in the current directory: $(pwd)"
    ls -l *.gz
fi

