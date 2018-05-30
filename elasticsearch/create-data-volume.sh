#!/bin/bash
docker create -v /usr/share/elasticsearch/config -v /usr/share/elasticsearch/data --name elasticsearch-data sliw/elasticsearch:1.7.5 /bin/true
