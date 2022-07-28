This are the commands line in Powershell terminal to create your own Data science environement

# to build the image 
docker build . -t my_ds_env

# to run the container and open a jupyter notebook and saving notebooks locally
docker run -p 8888:8888 -v "$(pwd):/notebooks" my_ds_env

# if you need to force stopping the running container
docker ps
docker stop CONTAINER_ID

# or stop all running containers
docker stop $(docker ps -q)

# to remove all containers and images
docker rm $(docker ps -aq)
docker rmi $(docker image ls -q)
