FROM ubuntu

RUN apt-get update
RUN apt-get install default-jdk maven -y

ENV JAVA_HOME=/usr/local/openjdk-11

WORKDIR /tmp/repos/boxfuse-sample-java-war-hello
RUN mvn package
RUN cp target/hello-1.0.war /tmp/build

CMD ["/bin/bash"]
