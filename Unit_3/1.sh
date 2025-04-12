#!/bin/bash

# Create emp file
echo "eno|ename|city|salary" > emp.txt
echo "101|Alice|New York|50000" >> emp.txt
echo "102|Bob|Los Angeles|55000" >> emp.txt
echo "103|Charlie|Chicago|48000" >> emp.txt
echo "104|David|Houston|60000" >> emp.txt
echo "105|Eve|Phoenix|52000" >> emp.txt
echo "106|Frank|Denver|51000" >> emp.txt

echo "First three lines: "
head -n 3 emp.txt


echo "\nLast three lines: "
tail -n -3 emp.txt

echo "\nSorted file: "
sort emp.txt

echo "\nEmp_no and city: "
cut -d "|" -f 1,3 emp.txt

