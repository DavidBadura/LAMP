#!/usr/bin/env bash

for f in `find /vagrant/files/* -type f`; do
	dir="$(dirname $f)"
	dir=${dir:15}
	file=${f:15};
	mkdir -p /$dir
	rm -Rf /$file
  	cp /vagrant/files/$file /$file
done

for f in `find /vagrant/local/* -type f`; do
	dir="$(dirname $f)"
	dir=${dir:15}
	file=${f:15};
	mkdir -p /$dir
	rm -Rf /$file
  	ln -s /vagrant/files/$file /$file
done
