#!/bin/bash
docker run -d --network controlnet -p 62613:61613 -p 62680:61680 --volumes-from apache-apollo-data-control --name apache-apollo-control sliw/apache-apollo:1.7.1
