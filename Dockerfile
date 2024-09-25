FROM openjdk:8u141-jdk

WORKDIR /server

COPY . .

RUN cp -rf .server.properties server.properties

CMD ["java", "-Xmx8192M", "-Xms8192M", "-jar", "forge-1.12.2-14.23.5.2860.jar", "-o", "false", "nogui"]
