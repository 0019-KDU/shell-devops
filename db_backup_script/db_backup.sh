#!/bin/bash

# Define the database name (ensure there is no leading space)
DB_NAME="mydatabase"

# Define the backup directory where the backup file will be saved
BACKUP_DIR="/home/chiradev/database_backup"

# Create a timestamp using the current date and time for naming the backup file
DATE=$(date +%Y-%m-%dT%H-%M-%S)

# Ensure the backup directory exists (create it if it does not)
mkdir -p "$BACKUP_DIR"

# Perform the MySQL database backup and redirect the output to the specified file
# The -p flag prompts for a password, and $DB_NAME is the name of the database
# The backup file will be saved as DB_NAME_TIMESTAMP.sql
mysqldump -u root -p "$DB_NAME" > "$BACKUP_DIR/${DB_NAME}_${DATE}.sql"

# Check if the backup command was successful
if [ $? -eq 0 ]; then
    # Print success message with the backup file path
    echo "Database backup successful: $BACKUP_DIR/${DB_NAME}_${DATE}.sql"
else
    # Print failure message if backup command failed
    echo "Database backup failed!"
fi


# Define the database name (ensure there is no leading space)
# Define the backup directory where the backup file will be saved
# Create a timestamp using the current date and time for naming the backup file
# Ensure the backup directory exists (create it if it does not)
# Perform the MySQL database backup and redirect the output to the specified file
# Check if the backup command was successful
# Print success message with the backup file path
# Print failure message if backup command failed
