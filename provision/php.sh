#!/usr/bin/env bash

apt-get install -y php5 php5-mysql php5-curl php5-xdebug php-pear


sed -i.bak 's/;date.timezone =/date.timezone = "Europe\/Berlin"/g' /etc/php5/apache2/php.ini
sed -i.bak 's/;date.timezone =/date.timezone = "Europe\/Berlin"/g' /etc/php5/cli/php.ini

curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
 
composer global require 'phpunit/phpunit' '*'
composer global require 'fabpot/php-cs-fixer' '*'
composer global require 'instaclick/php-code-sniffer' '*'
composer global require 'sensiolabs/security-checker' '*'

mv /root/.composer /home/vagrant/.composer
