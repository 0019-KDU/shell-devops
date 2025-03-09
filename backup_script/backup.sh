#!/bin/bash
SOURCE="/home/chiradev/source"
DESTINATION="/home/chiradev/destination"
DATE=$(date +%Y-%m-%d_%H-%M-%S)

# Create backup directory and copy files
mkdir -p "$DESTINATION/$DATE"
cp -r $SOURCE $DESTINATION/$DATE
echo "Backup complete on $DATE"


# SOURCE: The directory to be backed up.
# DESTINATION: The directory where the backup will be stored.
# DATE: Captures the current date and time to create a unique backup folder.
# mkdir -p $DESTINATION/$DATE: Creates the backup directory if it does not exist.
# cp -r $SOURCE $DESTINATION/$DATE: Copies the contents of the source directory to the backup directory.
# echo "Backup completed on $DATE": Outputs a message indicating the completion of the backup.
