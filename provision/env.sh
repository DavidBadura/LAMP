#!/usr/bin/env bash

apt-get install -y vim git tree zsh

curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

chsh -s /bin/zsh vagrant

git clone https://github.com/DavidBadura/.vim.git /home/vagrant/.vim
bash /home/vagrant/.vim/install.sh

chown vagrant:vagrant /home/vagrant -Rf
