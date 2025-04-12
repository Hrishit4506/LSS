read -p "Enter the filename to check sorted order: " sortfile
if [ -f "$sortfile" ]; then
    if sort -c "$sortfile"; then
        echo "$sortfile is already sorted."
    else
        echo "$sortfile is not sorted. Displaying in descending order:"
        sort -r "$sortfile"
    fi
else
    echo "File does not exist."
fi
