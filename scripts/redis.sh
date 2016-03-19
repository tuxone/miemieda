#!/usr/bin/env bash

source ./util.sh

print_green "Installing redis"

sudo apt-get install -y redis-server

print_green "Redis installed"
