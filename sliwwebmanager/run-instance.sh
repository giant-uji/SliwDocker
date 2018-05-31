#!/bin/bash
docker run -d --network controlnet -p 8090:80 --link elasticsearch-control:elasticsearch --name webmanager-control sliw/webmanager-test:1.0
