#!/bin/bash
project_prefix=${PWD##*/} 
project_dir=${PWD}/app/

imageName=${project_prefix}_drf
containerName=${project_prefix}-container

docker build -t ${imageName} .

echo Delete old container...
docker rm -f $containerName

echo Run new container...
sudo docker run -d -p 80:80 --name=$containerName -v ${project_dir}:/app/ ${imageName}