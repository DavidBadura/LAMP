#!/usr/bin/env bash

apt-get install -y zsh

git clone git://github.com/robbyrussell/oh-my-zsh.git /home/vagrant/.oh-my-zsh
cp /home/vagrant/.oh-my-zsh/templates/zshrc.zsh-template /home/vagrant/.zshrc
chsh -s /bin/zsh vagrant

if [[ ! -f /vagrant/local/home/vagrant/.zshrc ]]; then
	cp /home/vagrant/.zshrc /vagrant/local/home/vagrant/.zshrc
fi