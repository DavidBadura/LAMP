#!/usr/bin/env bash

echo "== cleanup =="

chown vagrant:vagrant /home/vagrant -Rf
apt-get autoremove -y
reboot
