#!/bin/sh

sudo yum remove docker docker-common container-selinux docker-selinux docker-engine 

sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum makecache fast
sudo yum install -y docker-ce
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker

