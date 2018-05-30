FROM java:8
MAINTAINER Adrian Puertas Cabedo <al259348@uji.es>

VOLUME /tmp
ADD sliwserver-1.0-SNAPSHOT.jar app.jar
RUN sh -c 'touch /app.jar'

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]
