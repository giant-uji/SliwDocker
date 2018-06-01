#!/bin/bash
docker run -d -p 127.0.0.1:8090:80 --link elasticsearch-control:elasticsearch --name webmanager-control sliw/webmanager-test:1.0
