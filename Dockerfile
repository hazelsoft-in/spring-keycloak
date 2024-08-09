FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY /build/libs/spring-keycloak-0.0.1-SNAPSHOT.jar app.jar

ARG CERT="keycloak-ingress-tls-cert.pem"
COPY $CERT /app
RUN keytool -importcert -file $CERT -noprompt -alias certificate_alias -storepass changeit -keystore $JAVA_HOME/lib/security/cacerts
ENTRYPOINT ["java","-jar","app.jar"]
