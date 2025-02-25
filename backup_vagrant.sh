#!/bin/bash

# Take backup of a specific user home directory

USERNAME=vagrant
BACKUP_LOCATION=/tmp # Location to store the backup

tar cvfz $BACKUP_LOCATION/$USERNAME.tar.gz /home/$USERNAME/js

echo "Backup of $USERNAME/js home directory completed"