LOG_FILE="/c/Users/Satish varma/Desktop/Revature/01-Linux/sample-log.txt"
echo ========== LOG ANALYSIS REPORT ==========
if [ -e "$LOG_FILE" ]; then
	count=0;
	while read line; do
	((count++))
	done < "$LOG_FILE"
	echo "File: ${LOG_FILE}"
	echo "Total Lines: ${count}"
	echo ------------------------------------------
	echo "INFO: $(grep -c  'INFO' "$LOG_FILE")"
	echo "WARNING: $(grep -c  'WARNING' "$LOG_FILE")"
	echo "Error: $(grep -c  'ERROR' "$LOG_FILE")"
	echo -------------------------------------------
	echo "Unique IP Addresses Found:"
	IP_LIST=$(grep -oE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' "$LOG_FILE" | sort | uniq)
	for ip in $IP_LIST
	do
		echo "$ip"
	done
else
	echo "File Not found"
fi
