FROM amazoncorretto:11-alpine-jdk
RUN mkdir /microservices
ADD target/hello-service-0.0.1-SNAPSHOT.jar /microservices/hello-service.jar
CMD ["java","-jar","/microservices/hello-service.jar"]
EXPOSE 8081