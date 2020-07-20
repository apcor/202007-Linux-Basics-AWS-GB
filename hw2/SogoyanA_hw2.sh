# Создаём две папки
mkdir first second

# Создаём 2 требуемых файла и записываем в них программы
echo 'print(1)' > first/first.py
echo 'print(2)' > second/second.py

# Проверка создания директорий
ls -la

total 40
drwxr-xr-x 6 ubuntu ubuntu 4096 Jul 20 12:10 .
drwxr-xr-x 3 root   root   4096 Jul 16 05:15 ..
-rw------- 1 ubuntu ubuntu    8 Jul 16 05:33 .bash_history
-rw-r--r-- 1 ubuntu ubuntu  220 Feb 25 12:03 .bash_logout
-rw-r--r-- 1 ubuntu ubuntu 3771 Feb 25 12:03 .bashrc
drwx------ 2 ubuntu ubuntu 4096 Jul 16 05:31 .cache
-rw-r--r-- 1 ubuntu ubuntu  807 Feb 25 12:03 .profile
drwx------ 2 ubuntu ubuntu 4096 Jul 16 05:15 .ssh
drwxrwxr-x 2 ubuntu ubuntu 4096 Jul 20 12:11 first
drwxrwxr-x 2 ubuntu ubuntu 4096 Jul 20 12:12 second

# Перенос файла из одной папки в другую
mv second/second.py first

# Удаление папки
rm -r second

# Переименование оставшейся папки
mv first first_second

# Удаление оставшейся папки
rm -r first_second
