#!/bin/bash
echo "DOWNLOADING ICONCUBE LOADERS ..."
sleep 5
curl -SL http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz | tar xzv --directory /usr/lib/php/20131226 --strip-components=1
echo "zend_extension=ioncube_loader_lin_5.6.so" > /etc/php/5.6/fpm/conf.d/00-ioncube.ini
echo "zend_extension=ioncube_loader_lin_5.6.so" > /etc/php/5.6/cli/conf.d/00-ioncube.ini
service php5.6-fpm restart
service apache2 restart
echo "FINISHED IONCUBE SETUP."
