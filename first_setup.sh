#!/bin/bash
# install some utility
apt-get update
apt-get install -y openssh-server libssl-dev libldap2-dev libffi-dev libpq-dev \
curl apt-utils apt-transport-https debconf-utils gcc build-essential g++-5 \
wget default-jdk software-properties-common ca-certificates zsh


# install docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install -y docker-ce
usermod -aG docker $SUDO_USER

# config vim
sudo -u $SUDO_USER bash << EOF
wget -O ~/.vimrc https://github.com/amix/vimrc/raw/master/vimrcs/basic.vim
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
EOF


