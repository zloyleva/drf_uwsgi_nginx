#!/bin/bash
project_prefix=${PWD##*/} 

imageName=python:3.6-stretch
containerName=${project_prefix}-container

echo $imageName
echo $containerName

sudo docker build .

echo Run new container...
sudo docker run -d -it -p 80:80 --name=$containerName -v ${PWD}/app:/app/ $imageName
