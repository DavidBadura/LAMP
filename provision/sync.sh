#!/usr/bin/env bash

echo "symlink /vagrant/files files"
bash /vagrant/rsymlink.sh /vagrant/files /

echo "symlink /vagrant/local files"
bash /vagrant/rsymlink.sh /vagrant/local /
