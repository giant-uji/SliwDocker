#!/bin/bash
BASEDIR=$(dirname $0)
docker build -t sliw/webmanager:1.0 $BASEDIR
