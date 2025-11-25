#! /bin/bash

service ssh start
python manage.py runserver "0.0.0.0:8000"

while [ 1 == 1 ]; do

	cat -;

	sleep 1;

done;

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
