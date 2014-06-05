#!/usr/bin/env bash

apt-get install samba-common samba

echo "vagrant" > smbpasswd -a vagrant -s

service smbd restart