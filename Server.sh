#!/bin/bash
 date;
 echo "uptime:"
 uptime
 echo "Currently Connected:"
 w
 echo "------------------------------------------"
 echo "Last Logins:"
 last -a |head -3
 echo "------------------------------------------"
 echo "Disk and Memory usage:"
 df -h | xargs | awk '{print "Free /total disk: " $11 " / " $9}'
 free -m | xargs | awk '{print "Free /total memory: " $17 " / " $8 " MB "}'
 echo "------------------------------------------"
 start_log = `head -1 /var/log/messages |cut -c 1-12`
 oom = `grep -ci kill /var/log/messages`
 echo -n "OOM errors since $start_log: " $oom
 echo ""
 echo "Utilization and most expensive processes:"
 top -b |head -3
 echo "------------------------------------------"
 echo "Open TCP ports:"
 nmap -p- -t4 127.0.0.1
 echo "------------------------------------------"
 echo "Current Connections:"
 ss -s
 echo "------------------------------------------"
 echo "processes:"
 ps auxf --width=200
 echo "------------------------------------------"
 echo "vmstat:"
 vmstat 1 5
