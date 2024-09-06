FROM maven:3-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:17.0.1-jdk-slim
COPY ./event-web/target/ROOT.jar /usr/local/tomcat/webapps/ROOT.jar
EXPOSE 5555

#ENTRYPOINT ["java", "-jar", "jobseeking.war"]