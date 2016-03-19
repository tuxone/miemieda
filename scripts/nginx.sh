#!/usr/bin/env bash

# http://nginx.org/en/linux_packages.html#stable

echo "installing the latest stable version"

sudo apt-key add nginx_signing.key
sudo apt-key update

echo "deb http://ppa.launchpad.net/nginx/stable/ubuntu trusty main" | sudo tee -a /etc/apt/sources.list > /dev/null
echo "deb-src http://ppa.launchpad.net/nginx/stable/ubuntu trusty main" | sudo tee -a /etc/apt/sources.list > /dev/null

sudo apt-get update
sudo apt-get install -y --force-yes nginx
