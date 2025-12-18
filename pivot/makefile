main: build run
clean: stop remove

remove: 
	docker rm pivot
	docker rmi image_pivot

build:
	/bin/bash start.sh
	docker build -t image_pivot ./machine

run:
	docker run -d --name pivot -p 22:22 image_pivot

stop:
	docker stop pivot

bash:
	docker exec -it pivot /bin/bash

logs:
	docker logs pivot