#!/bin/bash
HOST="google.com"
# Output file
OUT_FILE="/home/chiradev/output.txt"
# Check if the host is reachable
if ping -c 3 "$HOST" > /dev/null 2>&1; 
then
    echo "Host is reachable" >> "$OUT_FILE"
else
    echo "Host is not reachable" >> "$OUT_FILE"
fi

# HOST: The name of the host to check for reachability.
# OUT_FILE: The file where the output will be saved.

# ping -c $HOST $>/dev/null: Sends a ping request to the host and discards the output.
# if ping is successful: Executes the code inside the 'then' block.
# echo "Host is reachable" >> $OUT_FILE: If the host is reachable, writes "Host is reachable" to the output file.
# echo "Host is not reachable" >> $OUT_FILE: If the host is not reachable, writes "Host is not reachable" to the output file.
