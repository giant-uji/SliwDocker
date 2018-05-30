#!/bin/bash
docker run -d -p 80:8080 --link elasticsearch-instance:elasticsearch --name webmanager-instance sliw/webmanager:1.0
