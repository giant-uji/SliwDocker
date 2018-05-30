#!/bin/bash
docker run -d -p 9200:9200 -p 9300:9300 --volumes-from elasticsearch-data --name elasticsearch-instance sliw/elasticsearch:1.7.5
