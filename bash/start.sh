#!/bin/bash
project_prefix=${PWD##*/} 
containerName=${project_prefix}-container

sudo docker start $containerName