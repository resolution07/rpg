FROM ubuntu:latest

RUN apt update && \
    apt upgrade -y && \
    apt install -y openjdk-17-jre

WORKDIR /server

COPY . .

RUN cp server.properties.data server.propertie

CMD ["java", "-Xmx8192M", "-Xms8192M", "-jar", "minecraft_server.1.12.2.jar", "nogui"]
