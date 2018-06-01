#!/bin/bash
docker run -d --link elasticsearch-control:elasticsearch --link apache-apollo-control:apache-apollo --name server-control sliw/server-test:1.0
