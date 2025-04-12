echo ""
echo "====== MENU ======"
echo "1. Display troubleshooting details of network"
echo "2. Kill a process"
echo "3. View all mounts"
echo "4. Display full format listing of files"
echo "5. Exit"
echo "=================="
read -p "Enter your choice [1-5]: " choice

case $choice in
1)
	echo "1. Display troubleshooting details of network"
	ifconfig
	ip a
	;;
2)
	echo "2. Kill a process"
	sleep 10 &
	jobs
	kill 1
	jobs
	;;
3)
	echo "3. View all mounts"
	mount | column -t
        ;;
4)
	echo "4. Display full format listing of files"
	ls -l
	;;
esac

