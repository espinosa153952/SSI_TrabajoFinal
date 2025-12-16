main:
	/bin/bash start.sh
	docker-compose up --force-recreate -d

clean: 
	docker-compose down --rmi all -v

init:
	/bin/bash init.sh