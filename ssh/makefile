main: build run
clean: stop remove

remove: 
	docker rm ssh
	docker rmi image_ssh

build:
	/bin/bash start.sh
	docker build -t image_ssh ./machine

run:
	docker run -d --name ssh -p 22:22 image_ssh

stop:
	docker stop ssh

bash:
	docker exec -it ssh /bin/bash

logs:
	docker logs ssh