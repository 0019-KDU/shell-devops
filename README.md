# Backup Script

This script automates the backup process by creating a compressed archive of important files and storing them in a specified backup directory.

## Prerequisites

Ensure that you have the following installed on your system:

- Bash
- Cron (for scheduling backups)
- Tar (for creating archives)
- Sufficient storage space for backups

## Installation

1. Clone or download the script to your preferred location:
   ```bash
   git clone https://github.com/your-repo/backup_script.git
   ```
2. Give execution permissions to the script:
   ```bash
   chmod +x /path/to/backup_script.sh
   ```

## Usage

Run the script manually:

```bash
/path/to/backup_script.sh
```

This will create a backup of the specified files and store them in the backup directory.

## Scheduling with Cron

To automate the backup process, use `crontab -e` to edit the crontab file and add the following line:

```bash
* * * * * /path/to/backup_script.sh
```

This example runs the script every minute. Adjust the schedule as needed using the cron format:

| Field   | Allowed Values | Description                   |
| ------- | -------------- | ----------------------------- |
| Minute  | 0-59           | At which minute the task runs |
| Hour    | 0-23           | At which hour the task runs   |
| Day     | 1-31           | Day of the month              |
| Month   | 1-12           | Month of the year             |
| Weekday | 0-6 (Sun-Sat)  | Day of the week               |

### Example Schedules

- Every day at midnight:
  ```bash
  0 0 * * * /path/to/backup_script.sh
  ```
- Every Sunday at 3 AM:
  ```bash
  0 3 * * 0 /path/to/backup_script.sh
  ```
- Every first day of the month at 5 AM:
  ```bash
  0 5 1 * * /path/to/backup_script.sh
  ```

## Restore from Backup

To restore a backup, navigate to the backup directory and extract the archive:

```bash
cd /path/to/backup_directory
 tar -xvf backup_filename.tar.gz -C /restore/path/
```

## Logging

The script logs backup operations to `/var/log/backup_script.log`. You can check logs using:

```bash
tail -f /var/log/backup_script.log
```

## License

This script is released under the MIT License.

## Author

[Your Name] - [Your Contact Information]
