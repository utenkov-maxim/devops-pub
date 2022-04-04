FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install python-all python-pip -y

EXPOSE 5000

WORKDIR /tmp/
RUN git clone https://github.com/utenkov-maxim/devops-pub.git
RUN cp /tmp/devops-pub/work7/task1/app.py /opt/webapp
RUN cp /tmp/devops-pub/work7/task1/requirements.txt /tmp

RUN pip install -qr requirements.txt

WORKDIR /opt/webapp

RUN app.py

[RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip]