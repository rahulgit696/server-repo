#!/bin/bash

echo -e "\033[31m=======================Let's Welcome The Current Logged In User================================\033[0m"
# Welcome the user
echo "Hello, $(whoami)!"

echo -e "\033[32m========================Current Date and Time In IST================================\033[0m"

# Show the date and time
echo "Today is $(date) and the time is $(date +%r)."

echo -e "\033[33m=========================Uptime of the Server===============================\033[0m"

# Show the uptime of the server and the last logins
echo "Server u/ptime: $(uptime)"

echo -e "\033[34m==========================Last Logins in the server==============================\033[0m"

echo "Last logins:"
last | head

echo -e "\033[35m===========================Disk Space and RAM Utilization=============================\033[0m"

# Show the disk space and RAM utilization
echo "Disk space usage:"
df -h

echo -e "\033[36m============================RAM USAGE============================\033[0m"

echo "RAM usage:"
free -m

echo -e "\033[37m============================TOP CPU PROCESSES============================\033[0m"

# Show the top CPU processes
echo "Top CPU processes:"
ps aux --sort=-%cpu | head

echo -e "\033[37m============================THANK YOU============================\033[0m"

