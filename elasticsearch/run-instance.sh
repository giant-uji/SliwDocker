#!/bin/bash
docker run -d -p 127.0.0.1:9400:9200 -p 127.0.0.1:9500:9300 --volumes-from elasticsearch-data-control --name elasticsearch-control sliw/elasticsearch:1.7.5
