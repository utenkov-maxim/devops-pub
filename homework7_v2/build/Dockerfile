FROM ubuntu:18.04
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update && apt upgrade -y && apt install git maven -y
WORKDIR /makeapp
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /makeapp/boxfuse-sample-java-war-hello
RUN mvn package -Dmaven.test.skip -T 1C \
 && cp /makeapp/boxfuse-sample-java-war-hello/target/*.war /makeapp