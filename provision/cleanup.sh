#!/usr/bin/env bash

chown vagrant:vagrant /home/vagrant -Rf
apt-get autoremove -y

echo "== cleanup =="
for command in "${cleanup[@]}"
do
	echo "$command"
	eval "$command"
done
