#!/bin/bash
docker run -d  --network controlnet --link elasticsearch-control:elasticsearch --link apache-apollo-instance:apache-apollo --name server-control sliw/server-test:1.0
