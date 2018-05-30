#!/bin/bash
docker create -v /opt/apollo-instance/data -v /opt/apollo-instance/etc -v /opt/apollo-instance/log --name apache-apollo-data sliw/apache-apollo:1.7.1 /bin/true
