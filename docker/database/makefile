main: build run
clean: stop remove

remove: 
	docker rm mysql
	docker rmi image_mysql

build:
	docker build -t image_mysql ./machine

run:
	docker run -d --name mysql -p 3306:3306 image_mysql

stop:
	docker stop mysql

bash:
	docker exec -it mysql /bin/bash
