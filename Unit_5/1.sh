#!/bin/bash

echo "=== Foreground Process ==="
# Lists current foreground process attached to the terminal
ps -o pid,tty,stat,cmd | grep "^ *$$"

echo -e "\n=== All Background Processes (current shell) ==="
# Shows jobs started in the background from current terminal
jobs -l

echo -e "\n=== All Running Processes (by current user) ==="
# Lists all processes of current user
ps -u $USER
