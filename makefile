main:
	docker compose -f docker/docker-compose.yml up -d --force-recreate

clear:
	docker compose -f docker/docker-compose.yml down --rmi all -v

