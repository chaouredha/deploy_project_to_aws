FROM adoptopenjdk/openjdk11:latest

ARG JAR_FILE
RUN test -n "${JAR_FILE}"
ADD ${JAR_FILE} /app/app.jar

CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/app.jar"]

