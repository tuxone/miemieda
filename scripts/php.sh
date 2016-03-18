#!/usr/bin/env bash

echo "installing php"
echo "adding ppa to use 5.6"
sudo add-apt-repository -y  ppa:ondrej/php5-5.6
# FIXME: this is not working
#sudo apt-key -y update
sudo apt-get -y update

echo "install php and extensions"
sudo apt-get install -y php5-common php5-cli php5-fpm php5-mysql \
php5-sqlite php5-curl php5-gd php5-gmp php5-mcrypt \
php5-redis php5-imagick php5-intl php5-xdebug php5-json

# PHP Error Reporting Config
echo "enable all the error report for develop"
sudo sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php5/fpm/php.ini
sudo sed -i "s/display_errors = .*/display_errors = On/" /etc/php5/fpm/php.ini

# Composer
echo "Installing composer"
curl -sS https://getcomposer.org/installer | php
chmod +x composer.phar
sudo mv composer.phar /usr/local/bin/composer
