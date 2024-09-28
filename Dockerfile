FROM openjdk:8u141-jdk

WORKDIR /server

COPY . .

RUN cp -rf .server.properties server.properties

CMD ["java", "-Xmx8192M", "-Xms8192M", "-jar", "mohist-1.12.2-345-server.jar", "-o", "false", "nogui"]
