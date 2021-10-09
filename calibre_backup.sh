#!/bin/bash

# Создаем резервную копию
cd /mnt/0/documents/projects/pc_settings/calibre
tar cvpzf /mnt/0/backup/vvy_calibre/"$(date '+%Y-%m-%d').tar.gz" ./
# Удаляем архивы резервной копии старше n дней
find /mnt/0/backup/vvy_calibre/ -mtime +3 -type f -delete

# restore 
# cd /mnt/0/backup/vvy_calibre & tar xpvzf /mnt/0/backup/vvy_calibre/2021-10-09.tar.gz        


