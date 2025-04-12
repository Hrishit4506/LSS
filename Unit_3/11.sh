echo -e "\nCut 2-4 characters from all cities:"
cut -d "|" -f 3 emp.txt|cut -c 2-4 > demo.txt

echo -e "\nSorted city names:"
sort demo.txt

echo -e "\nFirst five cities:"
head -n 5 demo.txt

echo -e "\nLast five cities:"
tail -n 5 demo.txt
