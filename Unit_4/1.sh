#!/bin/bash

echo "============================"
echo " Disk Usage Report"
echo "============================"

echo ""
echo "📁 Disk usage of files and directories in /:"
du -h --max-depth=1 / 2>/dev/null

echo ""
echo "============================"
echo "📊 Overall disk space usage:"
df -h
