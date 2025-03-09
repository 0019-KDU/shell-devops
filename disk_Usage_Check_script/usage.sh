#!/bin/bash
THRESHOLD=80
# Check disk usage and print a warning if usage is above the threshold
df -H | grep -vE 'Filesystem|cdrom' | awk '{print $5 " " $1}' |
while read -r output; 
do
    usage=$(echo "$output" | awk '{print $1}' | cut -d'%' -f1)
    partition=$(echo "$output" | awk '{print $2}')
    if [ "$usage" -ge "$THRESHOLD" ]; then
        echo "Warning: Disk usage on $partition is at ${usage}%"
    fi
done

# THRESHOLD: Sets the disk usage percentage threshold
# df -H: Lists disk usage in human-readable format
# grep -vE '^Filesystem|tmpfs|cdrom': Filters out unnecessary lines like the header and temporary filesystems
# awk '{print $5 " " $1}': Extracts the usage percentage (column 5) and partition name (column 1)

# while read output: Iterates over each line of the filtered output from the df command

# usage=$(echo "$output" | awk '{print $1}' | cut -d'%' -f1): Extracts the usage percentage and removes the '%' symbol

# partition=$(echo "$output" | awk '{print $2}'): Extracts the partition name from the output

# if [ "$usage" -ge "$THRESHOLD" ]; then: Checks if the usage exceeds the threshold

# echo "Warning: Disk usage on $partition is at ${usage}%": Prints a warning message if disk usage is too high
