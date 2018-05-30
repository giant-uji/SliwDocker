FROM java:8
MAINTAINER Adrian Puertas Cabedo <al259348@uji.es>

RUN apt-get update -y && \
	apt-get install --no-install-recommends -y -q curl

ENV APOLLO_VERSION 1.7.1
ENV APOLLO_NAME apache-apollo-$APOLLO_VERSION
ENV APOLLO_TAR $APOLLO_NAME-unix-distro.tar.gz
ENV APOLLO_HOME /opt/$APOLLO_NAME
ENV APOLLO_INSTANCE /opt/apollo-instance

RUN curl -s -O http://archive.apache.org/dist/activemq/activemq-apollo/$APOLLO_VERSION/$APOLLO_TAR && \
	tar xzf $APOLLO_TAR -C /opt/ && \
	rm $APOLLO_TAR && \
	$APOLLO_HOME/bin/apollo create /opt/apollo-instance

COPY ./etc/apollo.xml $APOLLO_INSTANCE/etc/apollo.xml 

EXPOSE 61613 61680

WORKDIR $APOLLO_INSTANCE

CMD ["./bin/apollo-broker", "run"]