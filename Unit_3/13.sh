# 13. Create file f2 with stationery items
cat << EOF > f2
No | Item_Name | Quantity | Price
1  | Pen       | 45       | \$3.45
2  | Pencil    | 25       | \$2.45
3  | Eraser    | 5        | \$4.45
4  | Pen       | 25       | \$3.45
5  | Stapler   | 15       | \$1.45
6  | Pen       | 30       | \$3.45
EOF

echo -e "\nRecords starting with 'P':"
grep -E '^.*\|[[:space:]]*P' f2

echo -e "\nCount of records with quantity = 25:"
grep -E '\|[[:space:]]*25[[:space:]]*\|' f2 | wc -l

echo -e "\nRecord with maximum price:"
sort -t "|" -k4 -nr f2 | head -1
