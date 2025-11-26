main: build run
clean: stop remove

remove: 
	docker rm server
	docker rmi image_server

build:
	docker build -t image_server ./machine

run:
	docker run -d --name server -p 3306:3306 image_server

stop:
	docker stop server

bash:
	docker exec -it server /bin/bash

logs:
	docker logs server