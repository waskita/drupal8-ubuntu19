#install drupal8

apt -y update
apt -y upgrade
apt -y install apache2
apt -y install mysql-server
apt -y install php libapache2-mod-php php-mysql
apt -y install php-dom php-gd php-xml php-mbstring
service apache2 restart

wget https://ftp.drupal.org/files/projects/drupal-8.8.1.tar.gz
tar -C /var/www/html -xzvf drupal-8.8.1.tar.gz 

a2enmod rewrite
a2enmod ssl

cp /var/www/html/drupal-8.8.1/sites/default/default.settings.php /var/www/html/drupal-8.8.1/sites/default/settings.php
chmod 777 /var/www/html/drupal-8.8.1/sites/default/settings.php
mkdir /var/www/html/drupal-8.8.1/sites/default/files/
chown www-data /var/www/html/drupal-8.8.1/sites/default/files/
chmod 764 /var/www/html/drupal-8.8.1/sites/default/files/
cp  000-default.conf /etc/apache2/sites-enabled/000-default.conf