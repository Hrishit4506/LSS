#!/bin/bash

while true
do
    echo ""
    echo "======= NETWORK & JOBS MENU ======="
    echo "1. Ping a network"
    echo "2. Retrieve DNS name servers"
    echo "3. Check the mount version"
    echo "4. Display all the running jobs"
    echo "5. Display processes not associated with a terminal"
    echo "6. Exit"
    echo "==================================="
    read -p "Enter your choice [1-6]: " choice

    case $choice in
        1)
            read -p "Enter the IP address or domain to ping: " host
            echo "Pinging $host..."
            ping -c 4 $host
            ;;
        2)
            echo "DNS Name Servers from /etc/resolv.conf:"
            grep "nameserver" /etc/resolv.conf
            ;;
        3)
            echo "Mount command version:"
            mount --version 2>/dev/null || echo "mount version info not available"
            ;;
        4)
            echo "Running jobs:"
            jobs
            ;;
        5)
            echo "Processes not associated with a terminal:"
            ps -eo pid,tty,cmd | grep '^ *[0-9]* *?' | grep -v grep
            ;;
        6)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 6."
            ;;
    esac
done
