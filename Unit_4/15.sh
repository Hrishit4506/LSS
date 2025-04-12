#!/bin/bash

echo "File types in current directory:"
echo "---------------------------------"

for f in *; do
    if [ -e "$f" ]; then
        echo "$f: $(file "$f")"
    fi
done
