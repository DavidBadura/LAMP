#!/usr/bin/env bash

curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

composer global require 'fabpot/php-cs-fixer=*' 'instaclick/php-code-sniffer=*' 'sensiolabs/security-checker=*'

mv /root/.composer /home/vagrant/.composer
