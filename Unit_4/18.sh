#!/bin/bash

# Prompt the user to enter a command name
read -p "Enter the command name: " cmd

echo -e "\n🔍 Locating information for command: $cmd"

# Locate binary using 'which'
echo -e "\n📂 Binary location:"
which "$cmd" 2>/dev/null || echo "Not found"

# Locate source using 'type'
echo -e "\n📂 Source location:"
type "$cmd" 2>/dev/null || echo "Not found"

# Locate manual page using 'man -w'
echo -e "\n📖 Manual page location:"
man -w "$cmd" 2>/dev/null || echo "Manual not found"
