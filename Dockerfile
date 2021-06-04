FROM adoptopenjdk/openjdk11:latest

ARG JAR_FILE=target/*.jar
#RUN test -n "${JAR_FILE}"
ADD ${JAR_FILE} /app/app.jar

CMD ["java", "-jar", "/app/app.jar"]

