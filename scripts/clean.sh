#!/usr/bin/env bash

source ./util.sh

# https://gist.github.com/justindowning/5921369
print_green 'Cleanup bash history'

sudo unset /root/.bash_history
sudo unset /home/vagrant/.bash_history
sudo rm /root/.bash_history
sudo rm /home/vagrant/.bash_history

print_green 'Bash history for root and vagrant are removed'

# TODO: clean up apt-cache, log file
