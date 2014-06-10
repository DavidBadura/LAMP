#!/usr/bin/env bash

apt-get install -y samba-common samba

echo -ne "vagrant\nvagrant\n" | smbpasswd -a -s vagrant

echo "[www]" 						>> /etc/samba/smb.conf
echo "	comment = Vagrant LAMP" 	>> /etc/samba/smb.conf
echo "	path = /var/www" 			>> /etc/samba/smb.conf
echo "	valid users = vagrant" 		>> /etc/samba/smb.conf
echo "	public = no" 				>> /etc/samba/smb.conf
echo "	writable = yes" 			>> /etc/samba/smb.conf
echo "	printable = no" 			>> /etc/samba/smb.conf

service samba restart