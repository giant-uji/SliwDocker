#!/bin/bash
BASEDIR=$(dirname $0)
docker build -t sliw/apache-apollo:1.7.1 $BASEDIR
