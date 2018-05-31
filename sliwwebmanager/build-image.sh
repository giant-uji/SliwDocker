#!/bin/bash
BASEDIR=$(dirname $0)
docker build -t sliw/webmanager-test:1.0 $BASEDIR
