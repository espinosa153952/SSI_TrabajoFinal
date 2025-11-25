#! /bin/bash

service mariadb start
service ssh start

/bin/bash /opt/src/initMariaDB.sh

while [ 1 == 1 ]; do

	cat -;

	sleep 1;

done;
