#!/usr/bin/env bash

apt-get install -y vim git tree zsh

curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# oh my zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git /home/vagrant/.oh-my-zsh
cp /home/vagrant/.oh-my-zsh/templates/zshrc.zsh-template /home/vagrant/.zshrc
chsh -s /bin/zsh vagrant

git clone https://github.com/DavidBadura/.vim.git /home/vagrant/.vim

chown vagrant:vagrant /home/vagrant -Rf
