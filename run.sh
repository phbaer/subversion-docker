#!/bin/sh

sed -i -e "s/{SVNWEBDIR}/$SVNWEBDIR/g" /etc/apache2/httpd.conf
#sed -i -e "s/<UID>/$UID/g" /etc/apache2/httpd.conf \
#       -e "s/<GID>/$GID/g" /etc/apache2/httpd.conf

mkdir /svn/log &> /dev/null
chmod 755 /svn/log
chown -R $UID:$GID /svn/log /var/log /tmp /etc/s6.d /run/apache2
exec su-exec $UID:$GID /bin/s6-svscan /etc/s6.d
