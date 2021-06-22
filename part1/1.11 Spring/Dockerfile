FROM openjdk:8

RUN apt-get update -y && apt-get install -y unzip maven git

RUN git clone https://github.com/docker-hy/material-applications.git

EXPOSE 8080/tcp

RUN cd /material-applications/spring-example-project && ./mvnw package

CMD java -jar ./material-applications/spring-example-project/target/docker-example-1.1.3.jar