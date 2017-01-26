# Swagger on Docker

## pre pre uninstall docker old version

* docker ps
* docker stop XXXXXX
* systemctl stop docker
* yum -y remove docker
* yum -y remove docker*
* yum remove -y container-selinux

## pre install(docker-engine, docker-compose)

* yum install -y yum-utils
* yum-config-manager --add-repo https://docs.docker.com/engine/installation/linux/repo_files/centos/docker.repo
* yum makecache fast
* yum -y install docker-engine
* systemctl start docker
* docker run hello-world

* curl -L "https://github.com/docker/compose/releases/download/1.10.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
* chmod +x /usr/local/bin/docker-compose
* docker-compose --version


## install swagger-editor on docker

* docker pull swaggerapi/swagger-editor
* docker run -d -p 80:8080 swaggerapi/swagger-editor
* docker stop silly_bassi

