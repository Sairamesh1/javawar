FROM ubuntu:latest AS clone
RUN apt update
RUN apt install git -y
    openjdk-17-jdk \
    maven \
    && apt-get clean
RUN git clone https://github.com/springhow/spring-boot-war-example.git
WORKDIR /myapp

