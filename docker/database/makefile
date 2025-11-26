main: build run
clean: stop remove

remove: 
	docker rm mariadb
	docker rmi image_mariadb

build:
	docker build -t image_mariadb ./machine

run:
	docker run -d --name mariadb -p 3306:3306 image_mariadb

stop:
	docker stop mariadb

bash:
	docker exec -it mariadb /bin/bash
