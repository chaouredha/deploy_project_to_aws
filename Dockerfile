FROM adoptopenjdk/openjdk11:latest
ADD target/gestion-0.0.1-SNAPSHOT.jar gestion-0.0.1-SNAPSHOT.jar
EXPOSE 8092
ENTRYPOINT ["java", "-jar", "gestion-0.0.1-SNAPSHOT.jar"]
