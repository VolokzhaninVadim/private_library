# Calibre - Private library
![картинка](https://raw.githubusercontent.com/wiki/janeczku/calibre-web/images/main_screen.png)

## Порядок установки: 
1. Устанавливаем на пк calibre: `sudo pacman -S calibre`.
1. Перемещаем `metadata.db` в необходимую папку, где будут лежать книги на сервере. Внимательно смотрим на права этого файла.
1. Удаляем с пк calibre: `sudo pacman -R calibre`.
1. В интерфейсе выбираем этот путь (см. п.2). 
1. Изменяем пароль, тему, добавляем возможность загрузки книг. 
1. Пробрасываем на роутере порты. 
1. Доступ внутрь контейнера: `docker exec -it calibre-web bash `. 
1. Backup делаем через `crontab -e`: `18 13 * * * /mnt/0/documents/projects/pc_settings/calibre/calibre_backup.sh`. 

## Ссылки 
1. [Образ](https://docs.linuxserver.io/images/docker-calibre-web)
1. [github](https://github.com/janeczku/calibre-web)
