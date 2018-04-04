#!/bin/bash

# Install docker

yum install -y yum-utils device-mapper-persistent-data lvm2

subscription-manager repos --enable=rhel-7-server-extras-rpms

wget ftp://ftp.icm.edu.pl/vol/rzm6/linux-oracle-repo/OracleLinux/OL7/developer_EPEL/x86_64/pigz-2.3.4-1.el7.x86_64.rpm

rpm -i pigz-2.3.4-1.el7.x86_64.rpm

rm -f pigz-2.3.4-1.el7.x86_64.rpm

yum install -y docker-ce

systemctl enable docker

systemctl start docker

usermod -aG docker $SUDO_USER
