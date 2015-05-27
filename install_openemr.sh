#/bin/sh
	################################
	# chmod 777 install_openemr.sh #
	# ./install_openemr.sh         #
        # email: grobertrambo@gmail.com#
	################################

# wget http://releases.ubuntu.com/15.04/ubuntu-15.04-server-i386.iso.torrent
# install base ubuntu 15.04 server iso only no tweaks
# auto security updates recommended

sudo apt-get install apache2-mpm-prefork mysql-server libapache2-mod-php5 libdate-calc-perl libdbd-mysql-perl libdbi-perl libhtml-parser-perl libtiff-tools libwww-mechanize-perl libxml-parser-perl php5 php5-mysql php5-cli php5-gd php5-xsl php5-curl php5-mcrypt php-soap imagemagick php5-json leafpad firefox lxde-core xorg ### "json ubuntu_13 and later" 
# (optional...leafpad firefox lxde-core xorg)  
# runs smooth no bugs ubuntu 15.04 full size server iso 
# answer prompt for user input (yes,root,root)

wget http://sourceforge.net/projects/openemr/files/OpenEMR%20Current/4.2.0/openemr-4.2.0.tar.gz
tar -pxvzf openemr-4.2.0.tar.gz
mv -v openemr-4.2.0 /var/www/openemr
rm  openemr-4.2.0.tar.gz
rm openemr-4.2.0

# go get a cold or hot drink and wait...
exit # startx at this point



# TODO 
/
	sudo leafpad /etc/apache2/sites-available/edit 000-default.conf
	# change default sites from /var/www/html to /var/www/openemr 
	firefox http:\\localhost
	# http://www.open-emr.org/wiki/index.php/OpenEMR_4.2.0_Linux_Installation

	# After install change these permissions
	chmod 644 openemr/library/sqlconf.php chmod 600 openemr/acl_setup.php chmod 600 openemr/acl_upgrade.php chmod 600 openemr/sl_convert.php chmod 600 openemr/setup.php chmod 600 openemr/sql_upgrade.php chmod 600 openemr/gacl/setup.php chmod 600 openemr/ippf_upgrade.php

	sudo ufw enable
	ufw deny all
	ufw allow 80 # http
	ufw allow 443 # https
	ufw allow 22 # ssh

	# mod_rewrite all htttps
	# .htaccess deny from all allow from ? (not use?) Do not allow direct web access to the following directories 
	sites/*/documents
	sites/*/era
	sites/*/edi

	# clean up
	cd /var/www/openemr
	rm library/openflashchart/php-ofc-library/ofc_upload_image.php 
	rm library/openflashchart/tmp-upload-images/
	rm acl_setup.php 
	rm acl_upgrade.php 
	rm admin.php 
	rm sl_convert.php 
	rm setup.php sql_upgrade.php 
	rm gacl/setup.php ippf_upgrade.php 
	rm sql_patch.php
 
\
# TODO 

