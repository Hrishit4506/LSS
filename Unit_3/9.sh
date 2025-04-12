# a. Display student with highest marks
echo "\nStudent with highest marks:"
sort -t "|" -k4 -nr student.txt | head -1

# b. Display student with lowest marks
echo "Student with lowest marks:"
sort -t "|" -k4 -n student.txt | head -1

# c. Display employee with highest salary
echo "Employee with highest salary:"
sort -t "|" -k4 -nr emp.txt | head -1

# d. Display employee with lowest salary
echo "Employee with lowest salary:"
sort -t "|" -k4 -n emp.txt | head -1
