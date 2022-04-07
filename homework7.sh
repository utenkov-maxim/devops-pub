# Prepare environment
sudo su
apt update

# Install docker.io and git
apt install docker.io -y
apt install git -y

# Install docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Prepare work dirs and downloan java sources from github
mkdir repos
mkdir webapps
cd repos
git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
cd ..

# Prepare docker configuration
git clone https://github.com/utenkov-maxim/devops-pub.git
cd devops-pub/homework7/

# RUN docker-compose
docker-compose up -d