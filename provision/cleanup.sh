#!/usr/bin/env bash

chown vagrant:vagrant /home/vagrant -Rf

apt-get autoremove -y

service apache2 restart