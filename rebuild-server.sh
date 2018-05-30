#!/bin/bash
sliwserver/stop-instance.sh
sleep 1

apache-apollo/stop-instance.sh
sleep 1

sliwwebmanager/stop-instance.sh
sleep 1

elasticsearch/stop-instance.sh
sleep 5




elasticsearch/start-instance.sh
sleep 5

sliwwebmanager/start-instance.sh
sleep 5

apache-apollo/start-instance.sh
sleep 5

sliwserver/remove-instance.sh
sliwserver/build-image.sh
sliwserver/run-instance.sh

