FROM openjdk:8-jdk-alpine 

VOLUME /tmp

EXPOSE 9090

ARG JAR_FILE=target/docker-spring.jar

COPY ${JAR_FILE} springboot.jar

RUN echo Docker image creation started, please hold on for a moment.........

ENTRYPOINT ["java", "-Dserver.port=9090", "-jar", "springboot.jar"]

MAINTAINER "anamika@gmail.com"