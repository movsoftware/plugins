#!/bin/sh

mkdir -p /var/run/yaf/
chmod 755 /var/run/yaf
chown root:root /var/run/yaf

mkdir -p /var/db/yaf/
chmod 755 /var/db/yaf
chown root:wheel /var/db/yaf

if [ -d /var/tmp/yaf ]; then
  mv /var/tmp/yaf/* /var/db/yaf/
  rm -rf /var/tmp/yaf
fi


mkdir -p /usr/local/etc/rc.d
cp /usr/local/opnsense/scripts/OPNsense/yaf/yaf /usr/local/etc/rc.d/yaf
chmod 755 /usr/local/etc/rc.d/yaf
chown root:root /usr/local/etc/rc.d/yaf