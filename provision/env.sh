#!/usr/bin/env bash

apt-get install -y vim git tree

curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
