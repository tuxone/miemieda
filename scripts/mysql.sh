#!/usr/bin/env bash

source ./util.sh

print_green "Installing MySQL without ppa"

print_green "Set default mysql root password as vagrant"

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password vagrant'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password vagrant'
sudo apt-get install -y mysql-server mysql-client

print_green "MySQL installed"
