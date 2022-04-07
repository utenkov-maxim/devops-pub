FROM maven

RUN apt-get update
RUN apt-get install git -y

RUN mkdir /tmp/repos
WORKDIR /tmp/repos
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /tmp/repos/boxfuse-sample-java-war-hello

RUN mvn package
RUN cp target/hello-1.0.war /tmp/build
