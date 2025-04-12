#!/bin/bash

echo "Creating zip archives for all files and folders in current directory recursively..."
echo "Original files will be kept intact."

# Create a zip archive of the current directory with all subdirectories
zip -r compressed_backup.zip . -x "*.zip"
