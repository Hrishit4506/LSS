#!/bin/bash

echo "📅 1. Files modified exactly 20 days ago:"
find . -type f -mtime 20

echo -e "\n📂 2. Files accessed exactly 30 days ago:"
find . -type f -atime 30

echo -e "\n⏳ 3. Files modified more than 50 days ago but less than 75 days ago:"
find . -type f -mtime +50 -mtime -75
