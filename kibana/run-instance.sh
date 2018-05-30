#!/bin/bash
docker run -d -p 5601:5601 --link elasticsearch-instance:elasticsearch --name kibana-instance -d kibana:4.1
