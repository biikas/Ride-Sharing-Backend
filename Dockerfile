FROM openjdk:17
EXPOSE 8080
ADD target/ROOT.jar ROOT.jar
ENTRYPOINT ["java","-jar","/spring-test.jar"]