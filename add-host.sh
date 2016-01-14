#!/bin/bash
SITE="$1"
SITEPATH="$2"

#/etc/hosts
cp /etc/hosts /etc/hosts.original
echo -e "127.0.0.1\t${SITE}.dev" >> /etc/hosts

#httpd-vhosts.conf
VHOSTSFILE="/etc/apache2/extra/httpd-vhosts.conf"
cp $VHOSTSFILE ${VHOSTSFILE}.original
echo "<VirtualHost *:80>" >> $VHOSTSFILE
echo -e "\tDocumentRoot \"/Users/username/Sites/${SITEPATH}\"" >> $VHOSTSFILE
echo -e "\tServerName ${SITE}.dev" >> $VHOSTSFILE
echo -e "\tServerAlias www.${SITE}.dev" >> $VHOSTSFILE
echo '</VirtualHost>' >> $VHOSTSFILE
echo '' >> $VHOSTSFILE

#restart apache
apachectl graceful