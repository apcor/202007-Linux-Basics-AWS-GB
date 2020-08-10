# Задание 1

См. скриншот AMIs.png



# Задание 2

Инстанс с IP 3.128.76.207 - вновь созданный на основе AMI "Lesson 6" из Задания 1

# Подключаемся к новому инстансу
ssh -i /Users/asogoyan/Google\ Drive/Arsen\'s\ notes/202007\ GB\ Linux\ AWS\ course/aws_arsen.pem ubuntu@3.128.76.207

# Проверяем, на месте ли файл со скриптом
ls -l
  total 4
  -rwxrwxr-x 1 ubuntu ubuntu 85 Aug  3 11:35 numbers.py


# Задание 3

Создаём новый диск на 3GB # см. скриншот Volumes.png

Подсоединяем к новому инстансу из Задания 2:

		Attachment information
		i-0330eb4898149df98:/dev/sdf (attached)

Подключаемся через ssh к инстансу

lsblk
		NAME    MAJ:MIN RM  SIZE RO TYPE MOUNTPOINT
		loop0     7:0    0 28.1M  1 loop /snap/amazon-ssm-agent/2012
		loop1     7:1    0   97M  1 loop /snap/core/9665
		loop2     7:2    0   55M  1 loop /snap/core18/1880
		loop3     7:3    0 71.3M  1 loop /snap/lxd/16100
		xvda    202:0    0    8G  0 disk
		└─xvda1 202:1    0    8G  0 part /
		xvdf    202:80   0    3G  0 disk

sudo mkdir /data # Создаем папку для монтирования

sudo mkfs -t xfs /dev/xvdf # Создаём файловую систему

sudo mount /dev/xvdf /data # Монтируем в нужную папку

sudo chmod o+w /data # Даём остальным пользователям права на запись в папке

echo test > /data/test.txt # Создаём текстовый файл

cd ~
sudo umount /data # Отключили диск от текущего инстанса

# Создали новый инстанс в подсети текущего, см. скриншот Instances.png

# Detach Volume во вкладке Volumes и там же Attach к новому инстансу

# Подключаемся через ssh к этому новому инстансу

lsblk
		NAME    MAJ:MIN RM  SIZE RO TYPE MOUNTPOINT
		loop0     7:0    0   97M  1 loop /snap/core/9665
		loop1     7:1    0   55M  1 loop /snap/core18/1880
		loop2     7:2    0 71.3M  1 loop /snap/lxd/16100
		loop3     7:3    0 28.1M  1 loop /snap/amazon-ssm-agent/2012
		xvda    202:0    0    8G  0 disk
		└─xvda1 202:1    0    8G  0 part /
		xvdf    202:80   0    3G  0 disk

sudo file -s /dev/xvdf
		/dev/xvdf: SGI XFS filesystem data (blksz 4096, inosz 512, v2 dirs)


sudo mkdir /data
sudo mount /dev/xvdf /data
cd /data
ls -l
		total 4
		-rw-rw-r-- 1 ubuntu ubuntu 5 Aug  3 13:58 test.txt
nano test.txt

# См. скриншот Result.png
