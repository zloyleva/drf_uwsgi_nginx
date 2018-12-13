#!/bin/bash
project_prefix=${PWD##*/} 

imageName=${project_prefix}-img
containerName=${project_prefix}-container

sudo docker stop $containerName