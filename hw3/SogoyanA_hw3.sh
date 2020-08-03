# Задание 1

vim helloworld.py

#см. скриншот в файле task_1_vim.png

cat helloworld.py
  print('Hello World!')


# Задание 2

cat helloworld.py | wc -l


# Задание 3

echo 'print ("Linear Regression")' > linreg.py


# Задание 4

cat helloworld.py linreg.py
  print('Hello World!')
  print ("Linear Regression")


# Задание 5

1. cat -n helloworld.py linreg.py # Добавляется нумерация строк объединённого вывода
     1  print('Hello World!')
     2  print ("Linear Regression")


2. cat helloworld.py linreg.py - > newfile.txt
this is my input # Мой ввод вручную

cat newfile.txt
  print('Hello World!')
  print ("Linear Regression")
  this is my input
# Во вновь созданный файл объединились 2 существующих, а так же мой ввод


3. cat -E helloworld.py linreg.py # Обозначение знаком доллара концов строк в объединённом файле
  print('Hello World!')$
  print ("Linear Regression")$
