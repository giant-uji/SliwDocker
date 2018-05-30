#!/bin/bash
docker run -d --link elasticsearch-instance:elasticsearch --link apache-apollo-instance:apache-apollo --name server-instance sliw/server:1.0
