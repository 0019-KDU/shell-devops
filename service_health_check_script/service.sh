#!/bin/bash
SERVICE="nginx"
# Check if the service is running if , not ,starting it
if systemctl is-active --quiet $SERVICE; then
    echo "$SERVICE is already running."
else
    echo "Service is not running yet...."
    systemctl start $SERVICE
fi    

# SERVICE: The name of the service to check.
# systemctl is-active --quiet $SERVICE: Checks if the service is running.
# echo "$SERVICE is running": Prints a message if the service is running.
# systemctl start $SERVICE: Starts the service if it is not running.
