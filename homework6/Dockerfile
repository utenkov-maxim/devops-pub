FROM tomcat
RUN apt-get update
RUN apt-get install default-jdk maven git -y

ENV JAVA_HOME=/usr/local/openjdk-11

RUN mkdir repos
WORKDIR /usr/local/tomcat/repos

RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /usr/local/tomcat/repos/boxfuse-sample-java-war-hello

RUN mvn package
RUN cp target/hello-1.0.war /usr/local/tomcat/webapps

WORKDIR /usr/local/tomcat
