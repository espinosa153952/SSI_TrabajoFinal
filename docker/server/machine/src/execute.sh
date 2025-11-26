#! /bin/bash

until mysqladmin --ssl=0 -h db -u root -pserver ping; do
    sleep 1;
done

echo "CONEXIÓN CON LA BASE DE DATOS COMPROBADA"

python3 /opt/src/app/manage.py runserver "0.0.0.0:8000"

while [ 1 == 1 ]; do

	cat -;

	sleep 1;

done;