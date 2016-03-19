echo "Setting phpmyadmin default"

sudo su

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

# FIXME: this configuration is not secure
# FIXME: the conf file is not created
sudo cat > /etc/nginx/conf.d/phpmyadmin.conf <<EOF
server {
    listen 80;
    root /usr/share/phpmyadmin/;
    index index.php;
    server_name mysql.lk;

    location ~ \.php($|/) {
        fastcgi_split_path_info ^(.+\.php)(.*)$;
        # With php5-fpm:
	    fastcgi_pass unix:/var/run/php5-fpm.sock;
        fastcgi_index index.php;
        include fastcgi_params;
    }
}
EOF

echo "Restarting nginx"
sudo service nginx restart
