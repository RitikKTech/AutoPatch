#!/bin/bash

EMAIL="nohar99600@gmail.com"
DATE=$(date +%F_%H-%M)
LOGFILE="./logs/autopatch_$DATE.log"

while true; do
	echo ""
	echo "========== AutoPatch Main Menu =========="
	echo "1. Run System Update "
	echo "2. Check System Health "
	echo "3. Generate Health Report "
	echo "4. Exit "
	read -p  "Choose an option [1-4]" opt

	case $opt in
	1)
		echo "Running System Update..." | tee "$LOGFILE"
		bash modules/update.sh | tee -a "$LOGFILE"
		echo "Update Done. Sending Report " | tee -a "$LOGFILE"
		mail -s  "AutoPatch System Update Report " "$EMAIL" < "$LOGFILE"
		;;

	2)
		echo "Checking System Health..." | tee "$LOGFILE"
		bash modules/monitor.sh | tee -a "$LOGFILE"
		echo "Health Check Done. Sending Report " tee -a "$LOGFILE"
		mail -s "Autopatch System Health Report " "$EMAIL" < "$LOGFILE"
		;;
	3)
		echo "Generating Detaild Report..." | tee "$LOGFILE"
		bash modules/monitor.sh --report | tee -a "$LOGFILE"
		echo "Report Done... Sending email" | tee -a "$LOGFILE"
		mail -s "Autopatch Detailed Health Report" "$EMAIL" < "$LOGFILE"
		;;
	4) echo "Exiting..."; exit 0;;
	*) echo  "Invalid Option try again" ;;
	esac
	done
