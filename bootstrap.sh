#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

apt-get update

if [[ ! -f /vagrant/config.sh ]]; then
	cp /vagrant/config.sh-dist /vagrant/config.sh
fi

bash /vagrant/config.sh
bash /vagrant/provision/default.sh
bash /vagrant/provision/php.sh
bash /vagrant/provision/mysql.sh
bash /vagrant/provision/apache.sh

if $CONFIG_ENABLE_PHPMYADMIN; then
	bash /vagrant/provision/phpmyadmin.sh
fi

if $CONFIG_ENABLE_COMPOSER; then
	bash /vagrant/provision/composer.sh
fi

if $CONFIG_ENABLE_NODEJS; then
	bash /vagrant/provision/nodejs.sh
fi

if $CONFIG_ENABLE_RUBY; then
    bash /vagrant/provision/ruby.sh
fi

if $CONFIG_ENABLE_SAMBA; then
	bash /vagrant/provision/samba.sh
fi

if $CONFIG_ENABLE_ZSH; then
	bash /vagrant/provision/zsh.sh
fi

bash /vagrant/provision/sync.sh

if [[ -f /vagrant/local.sh ]]; then
	bash /vagrant/local.sh
fi

bash /vagrant/provision/cleanup.sh
