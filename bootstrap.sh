#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

apt-get update

if [[ ! -f /vagrant/config.sh ]]; then
	cp /vagrant/config.sh-dist /vagrant/config.sh
fi

cleanup=()

source /vagrant/config.sh-dist
source /vagrant/config.sh
source /vagrant/provision/default.sh
source /vagrant/provision/php.sh
source /vagrant/provision/mysql.sh
source /vagrant/provision/apache.sh
source /vagrant/provision/phpmyadmin.sh
source /vagrant/provision/composer.sh
source /vagrant/provision/samba.sh
source /vagrant/provision/zsh.sh
source /vagrant/provision/docker.sh
source /vagrant/provision/sync.sh
source /vagrant/provision/nodejs.sh

if [[ -f /vagrant/local.sh ]]; then
	source /vagrant/local.sh
fi

source /vagrant/provision/cleanup.sh
