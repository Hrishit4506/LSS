echo ""
echo "====== MENU ======"
echo "1. Real time view of running system"
echo "2. Display full formal list of running processes"
echo "3. Display hostname"
echo "4. Display routing table"
echo "5. Exit"
echo "=================="
read -p "Enter your choice [1-5]: " choice

case $choice in
1)
        top
	;;
2)
        ps -ef
        ;;
3)
        hostname
        ;;
4)
        ip route
        ;;
esac
