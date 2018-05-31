#!/bin/bash
docker run -d --network controlnet -p 9400:9200 -p 9500:9300 --volumes-from elasticsearch-data-control --name elasticsearch-control sliw/elasticsearch:1.7.5
