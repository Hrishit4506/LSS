#!/bin/bash

echo "=== Files not accessed in the last 1 year ==="
find . -type f -atime +365
