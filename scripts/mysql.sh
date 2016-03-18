#!/usr/bin/env bash

# http://dev.mysql.com/doc/mysql-apt-repo-quick-guide/en/#repo-qg-apt-repo-manual-setup

echo "add mysql ppa"
sudo apt-key add mysql_pubkey.asc
echo "deb http://repo.mysql.com/apt/ubuntu/ trusty mysql-5.7" | sudo tee /etc/apt/sources.list.d/mysql.list > /dev/null
sudo apt-get update

echo "Set default mysql root password as vagrant"
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password vagrant'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password vagrant'

echo "Installing mysql"
sudo apt-get install -y mysql-server mysql-client
