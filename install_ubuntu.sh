#!/bin/bash

# chmod +x install_ubuntu.sh

UBUNTU_NAME=$1

echo "UBUNTU_NAME=${UBUNTU_NAME}"

echo "--------- DOCKER -----------"
echo "https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce-1"
sudo apt-get -qq remove docker docker-engine docker.io
sudo apt-get -qq update
sudo apt-get -qq install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint
sudo add-apt-repository -r "deb [arch=amd64] https://download.docker.com/linux/ubuntu ${UBUNTU_NAME} stable"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu ${UBUNTU_NAME} stable"
sudo apt-get -qq update
sudo apt-get -qq install docker-ce
docker --version

echo "--------- DOCKER COMPOSE -----------"
echo "https://docs.docker.com/compose/install/#install-compose"
sudo curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

echo "--------- DOCKER MACHINE -----------"
echo "https://docs.docker.com/machine/install-machine/#install-machine-directly"
curl -L https://github.com/docker/machine/releases/download/v0.14.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine && \
sudo install /tmp/docker-machine /usr/local/bin/docker-machine
docker-machine version

echo "--------- VIRTUALBOX -----------"
echo "https://www.virtualbox.org/wiki/Linux_Downloads"
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install virtualbox-5.2
