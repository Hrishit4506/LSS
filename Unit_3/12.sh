cat << EOF > f1
No | Item_Name  | Quantity | Price
1  | Mangoes    | 45       | \$3.45
2  | Apples     | 25       | \$2.45
3  | Pineapples | 5        | \$4.45
4  | Tomatoes   | 25       | \$3.45
5  | Onions     | 15       | \$1.45
6  | Bananas    | 30       | \$3.45
EOF

echo "File f1 created with item list."

cat f1 | qty=-d "|" -f 3
