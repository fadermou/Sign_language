all : 
	docker compose -f docker-compose.yml up --build -d

clean :
	docker compose -f docker-compose.yml down -v

fclean : clean
	docker compose -f docker-compose.yml stop
	docker system prune -af

dclean: clean
	docker stop $(docker ps -qa); docker rm $(docker ps -qa); docker rmi -f $(docker images -qa); docker volume rm $(docker volume ls -q); docker network rm $(docker network ls -q) 2>/dev/null
re : clean all