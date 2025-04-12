#!/bin/bash

echo "🔍 1. Find files by name in current directory:"
find . -maxdepth 1 -type f -name "*"

echo -e "\n📁 2. Find directories by name:"
find . -type d -name "*"

echo -e "\n📝 3. Find all .c and .txt files:"
find . -type f \( -name "*.c" -o -name "*.txt" \)

echo -e "\n📄 4. Find all files with a particular extension (e.g., .sh):"
find . -type f -name "*.sh"

echo -e "\n🔠 5. Find all files starting with A-Z:"
find . -type f -regex './[A-Z].*'

echo -e "\n✅ 6. Find files with read, write, and execute permissions:"
find . -type f -perm -700

echo -e "\n❌ 7. Find files without read, write, and execute permissions:"
find . -type f ! -perm -111

echo -e "\n🔒 8. Find read-only files:"
find . -type f -perm 444

echo -e "\n✏️ 9. Find files with read & write permissions:"
find . -type f -perm 666

echo -e "\n🙈 10. Find all hidden files:"
find . -type f -name ".*"
