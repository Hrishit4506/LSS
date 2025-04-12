#!/bin/bash

echo "====================================="
echo "📊 Memory Usage Summary"
echo "====================================="

# Display memory info in human readable format
free -h

# Optionally, display more structured output
echo ""
echo "🔍 Detailed Memory Info:"
echo "-------------------------------------"

total=$(free -m | awk '/^Mem:/ {print $2}')
used=$(free -m | awk '/^Mem:/ {print $3}')
free_mem=$(free -m | awk '/^Mem:/ {print $4}')

echo "Total Memory     : $total MB"
echo "Used Memory      : $used MB"
echo "Free Memory      : $free_mem MB"
