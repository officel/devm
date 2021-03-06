#!/bin/sh

# 最初に一回だけ実行する（root）
# sudo sh 00_init.sh

sudo sh -c "echo 'exclude=kernel*' >> /etc/yum.conf"
sudo yum install -y epel-release
sudo yum install -y --enablerepo=epel libmcrypt libmcrypt-devel
sudo yum update -y
sudo yum update -y ca-certificates
sudo yum install -y autoconf automake make git patch bison re2c
sudo yum install -y gcc* compat-gcc* compat-glibc* compat-lib*
sudo yum install -y zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel perl-devel
sudo yum install -y libxml2-devel libcurl-devel libxslt-devel libjpeg-devel libpng-devel freetype-devel libtidy-devel
sudo yum install -y tmux
sudo yum install -y graphviz graphviz-gd

# CentOS 7
sudo timedatectl set-timezone Asia/Tokyo
sudo localectl set-locale LANG=ja_JP.utf8
