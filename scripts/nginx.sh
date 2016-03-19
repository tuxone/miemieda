#!/usr/bin/env bash

source ./util.sh

# http://nginx.org/en/linux_packages.html#stable
print_green "Installing the latest stable Nginx"

sudo add-apt-repository -y  ppa:nginx/stable
sudo apt-get update
sudo apt-get install -y nginx

print_green "Nginx installed"
