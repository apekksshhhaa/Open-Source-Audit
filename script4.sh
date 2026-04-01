#!/bin/bash
# Script 4: Log File Analyzer
# Author: Apeksha Saboo[24BAI10636]
# Course: Open Source Software

LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error'
COUNT=0

echo "==== Log File Analyzer ===="

# TODO: Add a do-while style retry if the file is empty or doesn't exist
while true; do
    # The -s flag checks if the file exists AND has a size greater than zero
    if [ -s "$LOGFILE" ]; then
        break # File is good, break out of the loop
    else
        echo "Error: File '$LOGFILE' not found or is empty."
        # Interactively ask for a new file path to retry
        read -p "Please enter a valid log file path: " LOGFILE
    fi
done

echo "Scanning $LOGFILE for the keyword: '$KEYWORD'..."

# while-read loop to scan line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Summary: Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo ""
echo "--- Last 5 matching lines ---"
# TODO: Print the last 5 matching lines using tail + grep
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
echo "==========================="