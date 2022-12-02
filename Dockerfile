FROM amazoncorretto:11-alpine-jdk

EXPOSE 8081

RUN mkdir /microservices

COPY target/libs/*.jar /microservices/hello-service.jar

ENTRYPOINT ["java", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap", "-Djava.security.egd=file:/dev/./urandom","-jar","/microservices/hello-service.jar"]