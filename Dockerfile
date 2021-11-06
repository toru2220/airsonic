FROM openjdk:8-jre-slim

WORKDIR /workspace

RUN apt-get update && \
    apt-get install -y unzip wget && \
    wget -O airsonic.war https://github.com/airsonic/airsonic/releases/download/v10.6.2/airsonic.war

EXPOSE 8080
WORKDIR /workspace
VOLUME ["/var/airsonic","/data"]

ENTRYPOINT ["java","-jar","airsonic.war"]

