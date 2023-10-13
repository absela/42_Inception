all	:
	@ clear
	@ mkdir -p /Users/absela/Desktop/data
	@ mkdir -p /Users/absela/Desktop/data/vol_wordpress
	@ mkdir -p /Users/absela/Desktop/data/vol_mariadb		
	@ docker-compose -f ./srcs/docker-compose.yml up -d --build


up :
	@ clear
	@ docker-compose -f ./srcs/docker-compose.yml up -d --build



down:
	@ docker-compose -f ./srcs/docker-compose.yml down
