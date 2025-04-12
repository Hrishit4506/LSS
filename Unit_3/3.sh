#!/bin/bash

# Create emp file
echo "eno|ename|city|salary" > emp.txt
echo "101|Alice|New York|50000" >> emp.txt
echo "102|Bob|Los Angeles|55000" >> emp.txt
echo "103|Charlie|Chicago|48000" >> emp.txt
echo "104|David|Houston|60000" >> emp.txt
echo "105|Eve|Phoenix|52000" >> emp.txt
echo "106|Frank|Denver|51000" >> emp.txt

# Create student file
echo "rno|name|city|marks" > student.txt
echo "201|John|New York|85" >> student.txt
echo "202|Emma|Los Angeles|92" >> student.txt
echo "203|Liam|Chicago|78" >> student.txt
echo "204|Olivia|Houston|88" >> student.txt
echo "205|Noah|Phoenix|80" >> student.txt
echo "206|Ava|Denver|90" >> student.txt

echo "Both emp and student files horizontally: "
paste -d '|' emp.txt student.txt

echo -e "\nDisplaying emp and student file sequence-wise with tab delimiter:"
paste emp.txt student.txt | tr '|' "\t"

echo -e "\nJoining emp and student file based on rno/eno:"
sort -t '|' -k4 -nr student.txt
join -t '|' -1 1 -2 1 emp.txt student.txt

