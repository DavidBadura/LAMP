#!/usr/bin/env bash

echo "symlink /vagrant/files files"
bash /vagrant/rsymlink.sh /vagrant/files /

echo "symlink /vagrant/local files"
bash /vagrant/rsymlink.sh /vagrant/local /

echo "ssh"
rm -Rf /home/vagrant/.ssh
cp -r /vagrant/ssh /home/vagrant/.ssh
chmod -Rf 0700 /home/vagrant/.ssh
