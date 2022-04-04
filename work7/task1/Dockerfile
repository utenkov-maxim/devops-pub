FROM ubuntu:18.04
MAINTAINER d.kleva <xxx@yyy.ru>
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip git

WORKDIR /tmp
RUN git clone https://github.com/utenkov-maxim/devops-pub.git
RUN cp /tmp/devops-pub/work7/task1/app.py /opt/webapp
RUN cp /tmp/devops-pub/work7/task1/requirements.txt /tmp

WORKDIR /opt/webapp
EXPOSE 5000
CMD ["python", "app.py"]


#ADD ./webapp/requirements.txt /tmp/requirements.txt
#RUN pip install -qr /tmp/requirements.txt
#ADD ./webapp /opt/webapp/