FROM maven:3.5-jdk-8 as MAVEN_BUILD
MAINTAINER Ashwin narayanan
COPY pom.xml /build/
COPY src /build/src/
WORKDIR /build/
RUN mvn package

FROM openjdk:8-jre-alpine
EXPOSE 9090 9090
WORKDIR /app
COPY --from=MAVEN_BUILD /build/target/demo-1.jar /app/
ENTRYPOINT ["java", "-jar", "demo-1.jar"]