#!/bin/bash
echo "rno|name|city|marks" > student.txt
echo "201|John|New York|85" >> student.txt
echo "202|Emma|Los Angeles|92" >> student.txt
echo "203|Liam|Chicago|78" >> student.txt
echo "204|Olivia|Houston|88" >> student.txt
echo "205|Noah|Phoenix|80" >> student.txt
echo "206|Ava|Denver|90" >> student.txt

cut -d "|" -f 3 student.txt > cities.txt
cat cities.txt

cut -d "|" -f 1,4  student.txt > marks.txt
cat marks.txt

cut -d "|" -f 4 student.txt | sort -nr | head -n 1

grep -oE "[0-9]+" student.txt
