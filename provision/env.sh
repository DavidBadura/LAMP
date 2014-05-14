#!/usr/bin/env bash

apt-get install -y vim git tree

curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

git clone https://github.com/DavidBadura/.vim.git /home/vagrant/.vim
bash /home/vagrant/.vim/install.sh

chown vagrant:vagrant /home/vagrant -Rf
