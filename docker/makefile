main:
	docker-compose up --force-recreate -d

clean: 
	docker-compose down --rmi all -v

dbBash:
	docker exec -it db bash

dbLogs:
	docker db server

serverBash:
	docker exec -it server bash

serverLogs:
	docker logs server