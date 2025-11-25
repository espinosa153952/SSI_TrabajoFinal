main: build run
clean: stop remove

remove: 
	docker rm mariaDB
	docker rmi image_mariaDB

build:
	docker build -t image_mariaDB ./machine

run:
	docker run -d --name mariaDB -p 3306:3306 image_mariaDB

stop:
	docker stop mariaDB

bash:
	docker exec -it mariaDB /bin/bash
