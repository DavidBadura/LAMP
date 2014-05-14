#!/usr/bin/env bash

apt-get install -y php5 php5-mysql php5-curl php5-xdebug php-pear

pear install PHP_CodeSniffer
wget http://get.sensiolabs.org/php-cs-fixer.phar -O /usr/local/bin/php-cs-fixer
