read -p "Enter the filename: " filename
if [ -f $filename ]
then
	echo "file exists:$filename"
	echo -e "\na. Content in sorted order:"
	sort "$filename"

	echo -e "\nb. First five lines:"
	head -n 5 "$filename"

   	echo -e "\nc. Last five lines:"
   	tail -n 5 "$filename"

	echo -e "\nd. Paste two files (student.txt and emp.txt) with | delimiter:"
   	paste -d "|" student.txt emp.txt
else
	echo "file doesn't exist"
fi
