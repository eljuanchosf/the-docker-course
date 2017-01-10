#!/bin/bash

# Create the container by downloading the busybox Linux image and execute the command '/bin/echo "Hello world"'
# then automatically remove the container (--rm) when exits.
docker run --rm busybox:latest /bin/echo "Hello world"

# List the images downloaded by Docker
docker images

# Create the container by using the busybox Linux image and execute the command '/bin/echo "Hello world"'
docker run busybox:latest /bin/echo "Hello world"

# Check the latest running docker containers
docker ps -l

# Get the container ID from the command
container_id=$(docker ps -l | awk  -F ' ' 'FNR==2 {print $1}')

# Remove the docker container
docker rm $image_id

# Run the container in interactive / TTY mode and remove it when exiting
docker run -it --rm busybox:latest

# Remove the docker image
image_id=$(docker images | awk  -F ' ' '$1 == "busybox" {print $3}')
docker rmi $image_id