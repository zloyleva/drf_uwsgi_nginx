#!/bin/bash
project_prefix=${PWD##*/} 

imageName=python:3.6-stretch
containerName=${project_prefix}-container

docker build .

echo Delete old container...
docker rm -f $containerName

echo Run new container...
sudo docker run -d -it -p 80:80 --name=$containerName -v ${PWD}/app:/app/ $imageName