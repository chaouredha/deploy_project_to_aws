FROM adoptopenjdk/openjdk11:latest

ARG JAR_FILE=target/*.jar
#RUN test -n "${JAR_FILE}"
ADD target/gestion-0.0.1-SNAPSHOT.jar /app/app.jar

CMD ["java", "-jar", "/app/app.jar"]

