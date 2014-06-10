LAMP
====

* Linux Apache Mysql Development System

Features
--------

* Apache2
* mySQL
* php5
* phpmyadmin
* samba
* nodejs
* git
* composer
* vim

Overview
--------

| Key | Value |
| --- | ----- |
| IP-Address | 192.168.13.37 |
| User | vagrant |
| Password | vagrant |

Samba
-----

| Key | Value |
| --- | ----- |
| Samba Freigabe | \\192.168.13.37\www |
| User | vagrant |
| Password | vagrant |

Führe im Windows-Explorer folgende Datei aus `sambawin.cmd` um automatisch die Samba Freigabe hinzuzufügen.

Vim
---

Leider kann die vim Konfiguration nicht automatisch installiert werden.
Um die vim konfiguration zu installieren führe einfach diesen befehl `bash ./vim_install.sh` im home Verzeichnis aus.

TODO
----

* generate ssh keys
* configurable system
* own bashrc
* own vimrc
