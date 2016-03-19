#!/usr/bin/env bash

echo "install basic tools"
sudo apt-get update

# install the basic tools
sudo apt-get install -y build-essential gcc make
sudo apt-get install -y software-properties-common
sudo apt-get install -y curl wget vim git

# use vim as git default editor, replace nano
git config --global core.editor "vim"
