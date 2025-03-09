#!/bin/bash
# Update system packages, remove unnecessary packages, and clean up
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get autoremove -y && sudo apt-get clean

# Notify the user that the system packages have been updated and cleaned up
echo "System packages updated and cleaning up"

# apt-get update  # This command updates the list of available packages from the repositories
# apt-get upgrade -y  # This command upgrades all installed packages to their latest versions
# apt-get autoremove -y  # This command removes unnecessary packages that were installed as dependencies but are no longer needed
# apt-get clean  # This command cleans up downloaded package files to free up space

# echo "System packages updated and cleaning up"  # This will print a message to notify the user that the system update and cleanup process is complete