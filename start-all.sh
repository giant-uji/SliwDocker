#!/bin/bash
elasticsearch/start-instance.sh
sleep 2

sliwwebmanager/start-instance.sh
sleep 2

apache-apollo/start-instance.sh
sleep 2

sliwserver/start-instance.sh


