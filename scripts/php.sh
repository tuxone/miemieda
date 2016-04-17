#!/usr/bin/env bash

source ./util.sh

print_green "Installing PHP"

echo "Install php and extensions"
sudo apt-get install -y php7.0-fpm \
php7.0-cli php7.0-curl php7.0-gd \
php7.0-intl php7.0-mysql php7.0-sqlite3 \
php7.0-mcrypt php7.0-json php7.0-xml php7.0-mbstring php7.0-zip

# php7.0-xdebug is not supported

    
# PHP Error Reporting Config
echo "enable all the error report for develop"
sudo sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/7.0/fpm/php.ini
sudo sed -i "s/display_errors = .*/display_errors = On/" /etc/php/7.0/fpm/php.ini
php -v

print_green "PHP installed"

# Composer
print_green "Installing composer"
curl -sS https://getcomposer.org/installer | php
chmod +x composer.phar
sudo mv composer.phar /usr/local/bin/composer
# TODO: add composer global require bin path to path
print_green "Composer installed"
