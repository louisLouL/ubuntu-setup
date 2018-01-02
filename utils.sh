apt-get update
# utils
apt-get install -y openssh-server build-essential gcc wget g++-5 \
libssl-dev libldap2-dev libffi-dev libpq-dev

# Install Docker
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install -y docker-ce
usermod -aG docker $USER

