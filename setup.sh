#! /bin/bash
clear

sudo apt-get update

echo "Startings setup script"

echo "\ninstalling java\n"
#install java
sudo apt-get install default-jre
sudo apt-get install default-jdk

echo "\ninstaling docker\n"
#install docker

sudo apt-get install \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install docker-ce

apt-cache madison docker-ce

sudo docker run hello-world
