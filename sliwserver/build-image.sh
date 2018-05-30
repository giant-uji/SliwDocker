#!/bin/bash
BASEDIR=$(dirname $0)
docker build -t sliw/server:1.0 $BASEDIR
