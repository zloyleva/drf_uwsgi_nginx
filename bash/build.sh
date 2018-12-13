#!/bin/bash
project_prefix=${PWD##*/} 

imageName=${project_prefix}-img
containerName=${project_prefix}-container

echo $imageName
echo $containerName

sudo docker build $imageName -f Dockerfile  .

echo Run new container...
sudo docker run -d -it -p 80:80 --name=$containerName -v ${PWD}/app:/app/ $imageName
