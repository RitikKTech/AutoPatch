#!/bin/bash

mkdir -p "$(dirname "$0")/../logs"
LOG_FILE="$(dirname "$0")/../logs/report_$(date +%F).log"


echo "==== SYSTEM HEALTH REPORT ===" >$LOG_FILE
echo "Date:  $(date)" >> $LOG_FILE
echo "Hostname: $(hostname)" >>  $LOG_FILE
echo "Uptime: $(uptime)" >> $LOG_FILE
echo -e "\nDisk Usage:" >> $LOG_FILE
df -h >> $LOG_FILE
echo -e "\nMemory Usage:" >> $LOG_FILE
free -h >> $LOG_FILE
echo -e "\nTop 5 Memory Consuming Process" >> $LOG_FILE
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6 >> $LOG_FILE

echo "Health Report Saved at $LOG_FILE"

if [ "$1" == "--report" ]; then
	cat $LOG_FILE
fi
