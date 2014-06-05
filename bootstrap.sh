#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

apt-get update

bash /vagrant/provision/default.sh
bash /vagrant/provision/php.sh
bash /vagrant/provision/mysql.sh
bash /vagrant/provision/apache.sh
bash /vagrant/provision/phpmyadmin.sh
bash /vagrant/provision/nodejs.sh
bash /vagrant/provision/samba.sh
bash /vagrant/provision/env.sh
bash /vagrant/provision/cleanup.sh