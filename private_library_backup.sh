#!/bin/bash

#sudo apt-get install p7zip-full
# Создаем резервную копию
cd /home/volokzhanin/docker/private_library/
tar cvpzf /mnt/backup/backup/private_library/"$(date '+%Y-%m-%d').tar.gz" ./ /mnt/backup/books/
7za a -tzip -p$ARCHIVE_PRIVATE_LIBRARY -mem=AES256  /mnt/backup/backup/private_library/"$(date '+%Y-%m-%d').zip" /mnt/backup/backup/private_library/"$(date '+%Y-%m-%d').tar.gz"
rm /mnt/backup/backup/private_library/"$(date '+%Y-%m-%d').tar.gz"
# Удаляем архивы резервной копии старше n дней
find /mnt/backup/backup/private_library/ -mtime +0 -type f -delete

# restore
# 7za e /mnt/backup/backup/private_library/2021-10-09.zip
# cd /home/volokzhanin/docker/private_library/ & tar xpvzf /mnt/backup/backup/private_library/2021-10-09.tar.gz