#!/bin/bash
BASEDIR=$(dirname $0)
docker build -t sliw/elasticsearch:1.7.5 $BASEDIR
