#!/bin/bash
echo Stop all containers...
sudo docker stop $(sudo docker ps -a -q)

echo Remove all containers...
sudo docker rm -f $(sudo docker ps -a -q)