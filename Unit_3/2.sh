#!/bin/bash

# Create emp file
echo "eno|ename|city|salary" > emp.txt
echo "101|Alice|New York|50000" >> emp.txt
echo "102|Bob|Los Angeles|55000" >> emp.txt
echo "103|Charlie|Chicago|48000" >> emp.txt
echo "104|David|Houston|60000" >> emp.txt
echo "105|Eve|Phoenix|52000" >> emp.txt
echo "106|Frank|Denver|51000" >> emp.txt

echo "Displaying eno,ename and city: "
cut -d "|" -f 1-3 emp.txt

echo "\nDisplay first 2 characters in ename: "
cut -d "|" -f 2 emp.txt | cut -c 1,2

echo "\nDisplay ename in caps: "
cut -d "|" -f 2 emp.txt | tr '[:lower:]' '[:upper:]'

echo "\n replace | with '\t': "
tr '|' '\t' < emp.txt

