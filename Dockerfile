FROM adoptopenjdk/openjdk11:latest
ADD target/gestion-0.0.1-SNAPSHOT.jar gestion.jar
EXPOSE 8092
ENTRYPOINT ["java", "-jar", "spring-boot-docker-ec2.jar"]
