# Задание 1

# Создадим под юзером ubuntu файл со скриптом
vim hello_world.py
  #!/usr/bin/python3
  print('Hello, world!')
  # :wq

# Проверка прав на скрипт
ls -l hello_world.py
  -rw-rw-r-- 1 ubuntu ubuntu 42 Jul 27 12:29 hello_world.py

# Создание нового юзера
sudo useradd -m -s /bin/bash user_new
sudo passwd user_new

# Даём право другим юзерам редактировать скрипт
sudo chmod o+w hello_world.py



# Задание 2

# Заходим под юзером user_new
su user_new
vim hello_world.py
  #!/usr/bin/python3
  print('Hello, world!(edited)')
  # :wq


# Задание 3
su user_new
cd ~
nano prog.py
  #!/usr/bin/python3
  import time
  for i in range(1,11):
      print(i)
      time.sleep(1)

chmod +x prog.py
./prog.py
  1
  2
  3
  4
  5
  6
  7
  8
  9
  10




