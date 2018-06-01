#!/bin/bash
docker run -d --network controlnet -p 8090:8080 --link elasticsearch-control:elasticsearch --name webmanager-control sliw/webmanager-test:1.0
