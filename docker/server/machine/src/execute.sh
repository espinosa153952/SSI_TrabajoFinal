#! /bin/bash

service ssh start

until RESULT=`mysql ping -h db -u root`; do
	echo $RESULT;
    sleep 1;
done

echo "CONEXIÓN CON LA BASE DE DATOS COMPROBADA"

python3 /opt/src/app/manage.py runserver "0.0.0.0:8000"

while [ 1 == 1 ]; do

	cat -;

	sleep 1;

done;
