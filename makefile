main:
	/bin/bash start.sh
	docker-compose up --force-recreate -d

clean: 
	docker-compose down --rmi all -v

init:
	/bin/bash init.sh

pivotingServer:
	ssh ssi@localhost -L 8080:server:8080 -N -T

pivotingSSH:
	ssh ssi@localhost -L 22000:ssh:22 -N -T