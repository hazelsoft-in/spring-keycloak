FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY /build/libs/spring-keycloak-0.0.1-SNAPSHOT.jar app.jar

ARG CERT="keycloak.crt"
COPY $CERT /app
RUN keytool -importcert -file $CERT -alias $CERT -cacerts -storepass changeit -noprompt

ENTRYPOINT ["java","-jar","app.jar"]
