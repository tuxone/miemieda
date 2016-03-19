#!/usr/bin/env bash

# http://dev.mysql.com/doc/mysql-apt-repo-quick-guide/en/#repo-qg-apt-repo-manual-setup

echo "add mysql ppa"
sudo apt-key add mysql_pubkey.asc
echo "deb http://repo.mysql.com/apt/ubuntu/ trusty mysql-5.7" | sudo tee /etc/apt/sources.list.d/mysql.list > /dev/null
sudo apt-get update

echo "Set default mysql root password as vagrant"
# FIXME: mysql 5.7.11 is installing mysql community server
# https://github.com/mysql/mysql-server/blob/b4104b21520be032400b768cea09a867068be49d/packaging/deb-trusty/mysql-community-server.postinst
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password vagrant'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password vagrant'
sudo debconf-set-selections <<< 'mysql-community-server mysql-community-server/root-pass password vagrant'
sudo debconf-set-selections <<< 'mysql-community-server mysql-community-server/re-root-pass password vagrant'

echo "Installing mysql"
sudo apt-get install -y --force-yes mysql-server mysql-client
