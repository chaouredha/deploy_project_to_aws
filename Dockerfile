FROM adoptopenjdk/openjdk11:latest

ARG JAR_FILE=targer/*.jar
COPY  ${JAR_FILE} app.jar

ENTRYPOINT  ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]

