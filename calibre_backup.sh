#!/bin/bash

# Создаем резервную копию
cd /home/ubuntu/docker/calibre/
tar cvpzf /mnt/backup/backup/vvy_calibre/"$(date '+%Y-%m-%d').tar.gz" ./
# Удаляем архивы резервной копии старше n дней
find /mnt/backup/backup/vvy_calibre/ -mtime +3 -type f -delete

# restore 
# cd /home/ubuntu/docker/calibre/ & tar xpvzf /mnt/backup/backup/vvy_calibre/2021-10-09.tar.gz


