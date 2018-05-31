#!/bin/bash
BASEDIR=$(dirname $0)
docker build -t sliw/server-test:1.0 $BASEDIR
