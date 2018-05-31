#!/bin/bash

docker network create controlnet

elasticsearch/create-data-volume.sh
elasticsearch/run-instance.sh
sleep 2

sliwwebmanager/build-image.sh
sliwwebmanager/run-instance.sh
sleep 2

#apache-apollo/start-instance.sh
#sleep 2

docker network connect controlnet apache-apollo-instance
sleep 2


sliwserver/build-image.sh
sliwserver/run-instance.sh
