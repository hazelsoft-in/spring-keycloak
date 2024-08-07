FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY /build/libs/spring-keycloak-0.0.1-SNAPSHOT.jar app.jar

ARG CERT="keycloak.crt"
COPY $CERT /app
RUN mkdir -p /usr/share/man/man1 \
    && apt-get update \
    && apt-get install -y ca-certificates-java \
    && keytool -importcert -file $CERT -alias $CERT -cacerts -storepass changeit -noprompt

ENTRYPOINT ["java","-jar","app.jar"]
