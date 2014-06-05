#!/usr/bin/env bash

apt-get install -y apache2 libapache2-mod-php5

/etc/init.d/apache2 stop

chown -R vagrant:vagrant /var/www

sed -i.bak 's/export APACHE_RUN_USER=www-data/export APACHE_RUN_USER=vagrant/g' /etc/apache2/envvars
sed -i.bak 's/export APACHE_RUN_GROUP=www-data/export APACHE_RUN_GROUP=vagrant/g' /etc/apache2/envvars

/etc/init.d/apache2 start