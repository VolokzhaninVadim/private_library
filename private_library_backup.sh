#!/bin/bash

# Создаем резервную копию
cd /home/volokzhanin/docker/private_library/
tar cvpzf /mnt/backup/backup/private_library/"$(date '+%Y-%m-%d').tar.gz" ./
# Удаляем архивы резервной копии старше n дней
find /mnt/backup/backup/private_library/ -mtime +3 -type f -delete

# restore 
# cd /home/volokzhanin/docker/private_library/ & tar xpvzf /mnt/backup/backup/private_library/2021-10-09.tar.gz


