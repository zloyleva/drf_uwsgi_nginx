show_containers: #show all containers
	@sudo docker ps

build: #build docker container #
	@sudo bash/build.sh

start: #build docker container #
	@sudo bash/start.sh

stop: #build docker container #
	@sudo bash/stop.sh

rebuild: #build docker container #
	@sudo bash/rebuild_container.sh

connect: #build docker container #
	@sudo bash/connect.sh

#Be careful for use it commands!!
remove_all_containers: #remove all docker containers
	@sudo bash/remove_all_containers.sh

remove_all_images: #remove all docker images
	@sudo bash/remove_all_images.sh