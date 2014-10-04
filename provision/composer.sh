#!/usr/bin/env bash

curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
 
composer global require 'phpunit/phpunit=*' 'fabpot/php-cs-fixer=*' 'instaclick/php-code-sniffer=*' 'sensiolabs/security-checker=*'
composer global update

mv /root/.composer /home/vagrant/.composer