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

if $CONFIG_ENABLE_PHPMYADMIN; then
	source /vagrant/provision/phpmyadmin.sh
fi

if $CONFIG_ENABLE_COMPOSER; then
	source /vagrant/provision/composer.sh
fi

if $CONFIG_ENABLE_NODEJS; then
	source /vagrant/provision/nodejs.sh
fi

if $CONFIG_ENABLE_RUBY; then
    source /vagrant/provision/ruby.sh
fi

if $CONFIG_ENABLE_SAMBA; then
	source /vagrant/provision/samba.sh
fi

if $CONFIG_ENABLE_ZSH; then
	source /vagrant/provision/zsh.sh
fi

if $CONFIG_ENABLE_HHVM; then
	source /vagrant/provision/hhvm.sh
fi

if $CONFIG_ENABLE_DOCKER; then
	source /vagrant/provision/docker.sh
fi

source /vagrant/provision/sync.sh

if [[ -f /vagrant/local.sh ]]; then
	source /vagrant/local.sh
fi

source /vagrant/provision/cleanup.sh
