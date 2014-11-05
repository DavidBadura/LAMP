#!/usr/bin/env bash

echo "cp /vagrant/files files"
cp -Rfv /vagrant/files/* /

echo "cp /vagrant/local files"
cp -Rfv /vagrant/local/* /

echo "ssh"
rm -Rf /home/vagrant/.ssh
cp -r /vagrant/ssh /home/vagrant/.ssh
chown -Rf vagrant:vagrant /home/vagrant/.ssh
chmod -Rf go-rwx,u-x,u+rwX /home/vagrant/.ssh
