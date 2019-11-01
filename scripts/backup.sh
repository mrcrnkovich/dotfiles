#! /usr/bash

#Ask for backup type

echo "Please Select Directories to be backed-up" 
echo ""
echo "1. DotFiles"
echo "2. Photos"
echo "3. Music"
echo "4. Documents"
echo "5. All"
echo ""
read -p 'Enter folders to be backed-up: ' backupoption

echo You have selected $backupoption

if [ $backupoption == 1 ]; then
  echo "Now backing up dotfiles"
  rsync -r ~/dotfiles/ pi@192.168.1.9:/home/pi/HD/backup/dotfiles
elif [ $backupoption == 2 ]; then
  echo "Now backing up Pictures"
  rsync -r /home/shared/Pictures pi@192.168.1.9:/home/pi/HD/backup/Pictures
elif [ $backupoption == 3 ]; then  
  echo "Now backing up Music"
  rsync -r /home/shared/Pictures pi@192.168.1.9:/home/pi/HD/backup/Music
elif [ $backupoption == 4 ]; then  
  echo "Now backing up Documents"
  rsync -r ~/Documents pi@192.168.1.9:/home/pi/HD/backup/Documents
elif [ $backupoption == 5 ]; then  
  echo "Now backing up Documents"
  rsync -r ~/Documents pi@192.168.1.9:/home/pi/HD/backup/Documents
  echo "Now backing up dotfiles"
  rsync -r ~/dotfiles/ pi@192.168.1.9:/home/pi/HD/backup/dotfiles
  echo "Now backing up Pictures"
  rsync -r /home/shared/Pictures pi@192.168.1.9:/home/pi/HD/backup/Pictures
  echo "Now backing up Music"
  rsync -r /home/shared/Pictures pi@192.168.1.9:/home/pi/HD/backup/Music
fi


echo "Backup completed"
