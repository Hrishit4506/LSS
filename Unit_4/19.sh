#!/bin/bash

echo "Enter the command name to find:"
read cmd

# Using 'which' to locate the binary in PATH
echo -e "\n🔍 Using 'which' command:"
which "$cmd"

# Using 'type' to get more info about the command
echo -e "\n🔍 Using 'type' command:"
type "$cmd"

# Using 'command -v' for POSIX-compliant search
echo -e "\n🔍 Using 'command -v':"
command -v "$cmd"

# Using 'find' to search command files manually under /usr/bin and /bin
echo -e "\n🔍 Using 'find' under common directories:"
find /usr/bin /bin /usr/local/bin -name "$cmd" 2>/dev/null
