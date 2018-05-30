FROM java:8
MAINTAINER Adrian Puertas Cabedo <al259348@uji.es>

VOLUME /tmp
ADD sliwwebmanager-0.0.1-SNAPSHOT.jar app.jar
RUN sh -c 'touch /app.jar'

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]
