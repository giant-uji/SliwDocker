#!/bin/bash
sliwserver/stop-instance.sh
sleep 1

#apache-apollo/stop-instance.sh
#sleep 1

sliwwebmanager/stop-instance.sh
sleep 1

elasticsearch/stop-instance.sh
sleep 1


elasticsearch/remove-instance.sh
elasticsearch/destroy-data-volume.sh
elasticsearch/create-data-volume.sh
elasticsearch/build-image.sh
elasticsearch/run-instance.sh
sleep 5


sliwwebmanager/remove-instance.sh
sliwwebmanager/build-image.sh
sliwwebmanager/run-instance.sh
sleep 5

#apache-apollo/start-instance.sh
#sleep 5

sliwserver/remove-instance.sh
sliwserver/build-image.sh
sliwserver/run-instance.sh

