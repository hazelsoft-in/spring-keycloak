FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY /build/libs/spring-keycloak-0.0.1-SNAPSHOT.jar app.jar

ARG CERT="keycloakcert1.crt"
ARG CERT1="rootCA.crt"
COPY $CERT /app
RUN keytool -importcert -file $CERT -noprompt -alias publiccert -storepass changeit -keystore $JAVA_HOME/lib/security/cacerts
RUN keytool -importcert -file $CERT1 -noprompt -alias rootcert -storepass changeit -keystore $JAVA_HOME/lib/security/cacerts
ENTRYPOINT ["java","-jar","app.jar"]
