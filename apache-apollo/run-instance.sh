#!/bin/bash
docker run -d -p 61613:61613 -p 61680:61680 --volumes-from apache-apollo-data --name apache-apollo-instance sliw/apache-apollo:1.7.1
