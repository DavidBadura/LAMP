#!/usr/bin/env bash

apt-get install -y php5 php5-mysql php5-curl php5-intl php5-xdebug php-pear

sed -i.bak 's/;date.timezone =/date.timezone = "Europe\/Berlin"/g' /etc/php5/apache2/php.ini
sed -i.bak 's/;date.timezone =/date.timezone = "Europe\/Berlin"/g' /etc/php5/cli/php.ini
