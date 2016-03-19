#!/usr/bin/env bash

source ./util.sh

print_green "Installing redis"

sudo add-apt-repository -y ppa:chris-lea/redis-server
sudo apt-get update
sudo apt-get install -y redis-server

print_green "Redis installed"
