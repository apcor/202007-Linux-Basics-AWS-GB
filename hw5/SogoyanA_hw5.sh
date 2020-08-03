# Задание 1, 3 (в одном)

# Создадим скрипт numbers.py

nano numbers.py
    #!/usr/bin/python3
    import time
    for i in range(1,41):
        print(i)
        time.sleep(1)

chmod +x numbers.py

python3 numbers.py > /dev/null &
  [1] 2126

# В файле numbers-py search.png скриншот результатов поиска в htop по слову numbers


# Задание 2

find /home/ubuntu -type f -name "*.py"
  /home/ubuntu/numbers.py
