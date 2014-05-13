#!/usr/bin/env bash

apt-get install -y vim git tree zsh

chsh -s /bin/zsh vagrant


curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
