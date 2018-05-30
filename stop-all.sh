#!/bin/bash
sliwserver/stop-instance.sh
sleep 1

apache-apollo/stop-instance.sh
sleep 1

sliwwebmanager/stop-instance.sh
sleep 1

elasticsearch/stop-instance.sh

