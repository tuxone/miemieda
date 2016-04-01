#!/usr/bin/env bash

source ./util.sh
print_green "Adding ppa"

echo "Use Nginx 1.8"
sudo add-apt-repository -y  ppa:nginx/stable

echo "Use PHP 7"
LC_ALL=C.UTF-8
sudo add-apt-repository -y  ppa:ondrej/php

echo "Use Redis 3.x"
sudo add-apt-repository -y ppa:chris-lea/redis-server

print_green "ppa added, need to run apt-get update"
