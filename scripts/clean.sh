#!/usr/bin/env bash

# https://gist.github.com/justindowning/5921369

function print_green {
  echo -e "\e[32m${1}\e[0m"
}

print_green 'Cleanup bash history'

sudo su
unset /root/.bash_history
unset /home/vagrant/.bash_history
[ -f /root/.bash_history ] && rm /root/.bash_history
[ -f /home/vagrant/.bash_history ] && rm /home/vagrant/.bash_history
