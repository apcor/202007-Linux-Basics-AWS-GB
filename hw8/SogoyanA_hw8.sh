# Задание 1


# Создаём файл скрипта
nano whoami.sh

		#!/bin/bash

		counter=3
		for i in $(seq $counter)
		do
		whoami
		done

# Делаем скрипт запускаемым
chmod +x whoami.sh

# Запускаем скрипт
./whoami.sh

		ubuntu
		ubuntu
		ubuntu



# Задание 2

# Создаём файл скрипта
nano even_num.sh

		#!/bin/bash

		n=0
		while [ $n -lt 101 ]
		do
		if [ $((n % 2)) -eq 0 ]
		then
		echo $n
		fi
		let n+=1
		done

# Делаем скрипт запускаемым
chmod +x even_num.sh

# Запускаем скрипт
./even_num.sh

		0
		2
		4
		6
		8
		10
		12
		14
		16
		18
		20
		22
		24
		26
		28
		30
		32
		34
		36
		38
		40
		42
		44
		46
		48
		50
		52
		54
		56
		58
		60
		62
		64
		66
		68
		70
		72
		74
		76
		78
		80
		82
		84
		86
		88
		90
		92
		94
		96
		98
		100


# Задание 3

# Создаём файл test.txt
nano test.txt

	A file to backup


crontab -e

# Прописываем задачу (см. скриншот crontab.png)
*/10 * * * * cat /home/ubuntu/test.txt > /home/ubuntu/test.txt.bak

# Проверяем лог (см. скриншот syslog.png)
tail -f /var/log/syslog

	Aug 15 12:40:01 ip-172-31-39-240 CRON[44011]: (ubuntu) CMD (cat /home/ubuntu/test.txt > /home/ubuntu/test.txt.bak)




