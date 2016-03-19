echo "Setting phpmyadmin default"

# FIXME: mysql: [ERROR] mysql: Empty value for 'port' specified.
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2"
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/dbconfig-install boolean true"
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/mysql/admin-user string root"
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/mysql/admin-pass password vagrant"
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/mysql/app-pass password vagrant"
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/app-password-confirm password vagrant"

echo "Installing phpmyadmin"
sudo apt-get install -y phpmyadmin

echo "Add hosts"
# mysql.lk
sudo sed -i '$ a\'"127.0.0.1    mysql.lk" /etc/hosts


sudo cp phpmyadmin.conf /etc/nginx/conf.d/

echo "Restarting nginx"
sudo service nginx restart
