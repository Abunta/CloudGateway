FROM openjdk:11

ARG JAR_FILE=target/*.jar

#ENV CONFIG_SERVER_URL=host.docker.internal
#ENV EUREKA_SERVER_ADDRESS=http://host.docker.internal:8761/eureka

COPY ${JAR_FILE} cloudgateway.jar

ENTRYPOINT ["java", "-jar", "/cloudgateway.jar"]

EXPOSE 9090