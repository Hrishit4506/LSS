# 10. Sort student file by name and store in another file
sort -t "|" -k2 student.txt > sorted_by_name.txt
echo "Student file sorted by name and saved in sorted_by_name.txt"
