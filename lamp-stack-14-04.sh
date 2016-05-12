# A shell script to install LAMP (Linux, Apache, MYSQL,PHP) on Ubuntu 14.04 LTS)

#Root access

sudo su

#Update 

apt-get update

#Install apache

apt-get install apache2

#Install MYSQL

apt-get install mysql-server php5-mysql

#Setup mysql db

mysql_install_db


#Install PHP

apt-get install php5 libapache2-mod-php5 php5-mcrypt


:'
We want to move the PHP index file highlighted above to the first position after the DirectoryIndex specification, like this:

<IfModule mod_dir.c>
    DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm
</IfModule>
'
sed -i -- 's/DirectoryIndex index.html index.cgi index.pl index.php index.xhtml index.htm/DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm/g' /etc/apache2/mods-enabled/dir.conf


#Restart apache Server 

service apache2 restart

#Finished installation of lamp stack