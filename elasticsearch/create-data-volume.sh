#!/bin/bash
docker create --network controlnet -v /usr/share/elasticsearch/config -v /usr/share/elasticsearch/data --name elasticsearch-data-control sliw/elasticsearch:1.7.5 /bin/true
