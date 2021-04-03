#!/bin/sh

mkdir -p /var/run/naavizl/
chmod 755 /var/run/naavizl
chown root:root /var/run/naavizl

mkdir -p /var/db/naavizl/
chmod 755 /var/db/naavizl
chown root:wheel /var/db/naavizl

if [ -d /var/tmp/naavizl ]; then
  mv /var/tmp/naavizl/* /var/db/naavizl/
  rm -rf /var/tmp/naavizl
fi


mkdir -p /usr/local/etc/rc.d
cp /usr/local/opnsense/scripts/OPNsense/naavizl/naavizl /usr/local/etc/rc.d/naavizl
chmod 755 /usr/local/etc/rc.d/naavizl
chown root:root /usr/local/etc/rc.d/naavizl