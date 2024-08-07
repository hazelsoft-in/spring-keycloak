FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY /build/libs/spring-keycloak-0.0.1-SNAPSHOT.jar app.jar

ARG CERT="keycloak.crt"
COPY $CERT /app
keytool -importcert -alias "mycertificate" -trustcacerts -keystore cacerts -file $CERT

ENTRYPOINT ["java","-jar","app.jar"]
