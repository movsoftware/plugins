echo "Restarting configd"
if /usr/local/etc/rc.d/configd status > /dev/null; then
        /usr/local/etc/rc.d/configd restart
fi
