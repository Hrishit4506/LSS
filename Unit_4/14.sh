#!/bin/bash

# Create 3 sample folders with dummy files
mkdir -p folder1 folder2 folder3
echo "File A in folder1" > folder1/fileA.txt
echo "File B in folder2" > folder2/fileB.txt
echo "File C in folder3" > folder3/fileC.txt

# Create a tar archive containing the folders
tar_file="myfolders.tar"
tar -cvf $tar_file folder1 folder2 folder3

# Simulate execution of the tar file (extract it)
mkdir extracted
tar -xvf $tar_file -C extracted

# Display contents of the tar file
echo -e "\nContents of $tar_file:"
tar -tvf $tar_file
