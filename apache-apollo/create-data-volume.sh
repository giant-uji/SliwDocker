#!/bin/bash
docker create -v /opt/apollo-control/data -v /opt/apollo-control/etc -v /opt/apollo-control/log --name apache-apollo-data-control sliw/apache-apollo:1.7.1 /bin/true
