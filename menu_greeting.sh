OUTPUT_FILE="system_info.txt"
show_welcome() {
    USER_NAME=$(whoami)
    CURRENT_DATE=$(date "+%a %b %d %H:%M:%S")
    echo "===============================================" | tee -a "$OUTPUT_FILE"
    echo "   Welcome, $USER_NAME!" | tee -a "$OUTPUT_FILE"
    echo "   Date: $CURRENT_DATE" | tee -a "$OUTPUT_FILE"
    echo "===============================================" | tee -a "$OUTPUT_FILE"
}
show_date() {
    echo "Current Date & Time: $(date)" | tee -a "$OUTPUT_FILE"
}
show_users() {
    COUNT=$(who | wc -l)
    echo "Users Currently Logged In: $COUNT" | tee -a "$OUTPUT_FILE"
    echo "Details:" | tee -a "$OUTPUT_FILE"
    who | tee -a "$OUTPUT_FILE"
}
show_disk() {
    USAGE=$(df -h / | awk 'NR==2 {print $5}')
    echo "Disk Usage of Root Partition: $USAGE" | tee -a "$OUTPUT_FILE"
}
show_uptime() {
    UPTIME=$(uptime -p)
    echo "System Uptime: $UPTIME" | tee -a "$OUTPUT_FILE"
}
clear_file() {
    > "$OUTPUT_FILE"
    echo "File cleared successfully!"
}

menu() {
    while true
    do
        echo ""
        echo "==============================================="
        echo "   🖥️  SYSTEM INFORMATION MENU"
        echo "==============================================="
        echo "1. Display Date and Time"
        echo "2. Show Logged-in Users"
        echo "3. Show Disk Usage"
        echo "4. Show System Uptime"
        echo "5. Clear Output File"
        echo "6. Display File Contents"
        echo "7. Exit"
        echo "==============================================="
        read -p "Enter your choice [1-7]: " choice

        case $choice in
            1) show_date ;;
            2) show_users ;;
            3) show_disk ;;
            4) show_uptime ;;
            5) clear_file ;;
            6) cat "$OUTPUT_FILE" ;;
            7) echo "Thank you! Goodbye, $(whoami)!"; exit ;;
            *) echo "Invalid choice! Please try again." ;;
        esac
    done
}


clear
show_welcome
menu
