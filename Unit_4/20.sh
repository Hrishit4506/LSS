#!/bin/bash

# Prompt the user for the command
read -p "Enter the command name: " cmd

echo -e "\n🔍 Finding executable for: $cmd"

# Using 'which'
echo -e "\n➡️ Using 'which':"
which "$cmd" 2>/dev/null || echo "Not found with 'which'"

# Using 'command -v'
echo -e "\n➡️ Using 'command -v':"
command -v "$cmd" 2>/dev/null || echo "Not found with 'command -v'"

# Using 'type'
echo -e "\n➡️ Using 'type':"
type -a "$cmd" 2>/dev/null || echo "Not found with 'type'"
