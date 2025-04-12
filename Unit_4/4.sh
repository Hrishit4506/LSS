#!/bin/bash

echo "======================================"
echo "📁 Display file information of dummy files"
echo "======================================"

# Create dummy files for demonstration
touch dummy1.txt dummy2.log dummy3.dat
ls -l dummy*

echo ""
echo "======================================"
echo "📏 Display sizes in Human Readable Format (for dummy files)"
echo "======================================"
du -h dummy*

echo ""
echo "======================================"
echo "🔸 Display information in KB"
echo "======================================"
du -k dummy*

echo ""
echo "======================================"
echo "🔹 Display information in MB"
echo "======================================"
du -m dummy*

echo ""
echo "======================================"
echo "🔶 Display information in GB"
echo "======================================"
du --block-size=1G dummy*

echo ""
echo "======================================"
echo "🧾 File System Type"
echo "======================================"
df -T

echo ""
echo "======================================"
echo "📂 Info of Only /home in Human Readable Format"
echo "======================================"
df -h /home
