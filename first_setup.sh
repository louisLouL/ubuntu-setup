#!/bin/bash
# install some utility
apt-get update
apt-get install -y libssl-dev libldap2-dev libffi-dev libpq-dev \
curl apt-utils apt-transport-https debconf-utils gcc build-essential g++-5 \
wget default-jdk software-properties-common ca-certificates

# install docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install -y docker-ce
usermod -aG docker $USER

# config vim
wget -O ~/.vimrc https://github.com/louisLouL/ubuntu-setup/raw/master/vimrc
