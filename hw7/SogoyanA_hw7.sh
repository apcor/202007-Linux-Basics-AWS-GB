# Задание 1

# Создадим 3 файла для этого ДЗ

echo "print('Hello test1')" > test1.py
echo "print('Hello test2')" > test2.py
echo "pri('Hello test3')" > wrongtest.py

# Найдём файлы с расширением .py, название которых начинается на букву t.
ls /home/ubuntu | grep '^t.*\.py$'
	test1.py
	test2.py



# Задание 2

ls /home/ubuntu | grep '.*\.py$' | cat * | grep 'print'
	print('Hello test1')
	print('Hello test2')


# Задание 3

uptime
		18:21:46 up 26 min,  1 user,  load average: 0.00, 0.00, 0.00

uptime | sed 's/.* \([0-9]\+\) min.*/\1/'
		26
