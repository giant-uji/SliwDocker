#!/bin/bash
docker run -d -p 127.0.0.1:62613:61613 -p 127.0.0.1:62680:61680 --volumes-from apache-apollo-data-control --name apache-apollo-control sliw/apache-apollo:1.7.1
