#!/bin/bash

#################################################################################
# Script Name : install-wordpress.sh
# Description : Automated WordPress Installation on Ubuntu 24.04
# Author      : Puneet
# Version     : 1.0
#################################################################################

set -e

############################
# VARIABLES
############################

DB_NAME="wordpress"
DB_USER="wpuser"
DB_PASS="ChangeMe@123"

WP_DIR="/var/www/html"

DOMAIN="_"

############################
# ROOT CHECK
############################

if [ "$EUID" -ne 0 ]; then
    echo "Run this script as root."
    exit 1
fi

############################
# UPDATE SERVER
############################

echo "Updating packages..."

apt update -y
apt upgrade -y

############################
# INSTALL APACHE
############################

echo "Installing Apache..."

apt install apache2 -y

systemctl enable apache2
systemctl start apache2

############################
# INSTALL MARIADB
############################

echo "Installing MariaDB..."

apt install mariadb-server mariadb-client -y

systemctl enable mariadb
systemctl start mariadb

############################
# INSTALL PHP
############################

echo "Installing PHP..."

apt install -y \
php \
libapache2-mod-php \
php-mysql \
php-cli \
php-common \
php-curl \
php-gd \
php-mbstring \
php-xml \
php-xmlrpc \
php-soap \
php-intl \
php-zip \
php-bcmath \
php-imagick \
unzip \
wget \
curl

############################
# APACHE MODULES
############################

a2enmod rewrite headers ssl

systemctl restart apache2

############################
# CREATE DATABASE
############################

echo "Creating WordPress Database..."

mysql <<EOF

CREATE DATABASE IF NOT EXISTS ${DB_NAME}
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_unicode_ci;

CREATE USER IF NOT EXISTS '${DB_USER}'@'localhost'
IDENTIFIED BY '${DB_PASS}';

GRANT ALL PRIVILEGES
ON ${DB_NAME}.*
TO '${DB_USER}'@'localhost';

FLUSH PRIVILEGES;

EOF

############################
# DOWNLOAD WORDPRESS
############################

echo "Downloading WordPress..."

rm -rf ${WP_DIR}/*

cd /tmp

wget https://wordpress.org/latest.tar.gz

tar -xzf latest.tar.gz

cp -R wordpress/* ${WP_DIR}

############################
# CONFIGURE WORDPRESS
############################

cd ${WP_DIR}

cp wp-config-sample.php wp-config.php

sed -i "s/database_name_here/${DB_NAME}/" wp-config.php
sed -i "s/username_here/${DB_USER}/" wp-config.php
sed -i "s/password_here/${DB_PASS}/" wp-config.php

############################
# WORDPRESS SECURITY KEYS
############################

SALT=$(curl -s https://api.wordpress.org/secret-key/1.1/salt/)

sed -i '/AUTH_KEY/d' wp-config.php
sed -i '/SECURE_AUTH_KEY/d' wp-config.php
sed -i '/LOGGED_IN_KEY/d' wp-config.php
sed -i '/NONCE_KEY/d' wp-config.php
sed -i '/AUTH_SALT/d' wp-config.php
sed -i '/SECURE_AUTH_SALT/d' wp-config.php
sed -i '/LOGGED_IN_SALT/d' wp-config.php
sed -i '/NONCE_SALT/d' wp-config.php

sed -i "/@-/r /dev/stdin" wp-config.php <<< "$SALT"

############################
# PERMISSIONS
############################

chown -R www-data:www-data ${WP_DIR}

find ${WP_DIR} -type d -exec chmod 755 {} \;

find ${WP_DIR} -type f -exec chmod 644 {} \;

############################
# APACHE CONFIGURATION
############################

cat > /etc/apache2/sites-available/wordpress.conf <<EOF

<VirtualHost *:80>

ServerAdmin admin@example.com

DocumentRoot ${WP_DIR}

<Directory ${WP_DIR}>
Options Indexes FollowSymLinks
AllowOverride All
Require all granted
</Directory>

ErrorLog \${APACHE_LOG_DIR}/wordpress-error.log
CustomLog \${APACHE_LOG_DIR}/wordpress-access.log combined

</VirtualHost>

EOF

a2dissite 000-default.conf

a2ensite wordpress.conf

systemctl reload apache2

############################
# FIREWALL
############################

if command -v ufw >/dev/null 2>&1; then

ufw allow OpenSSH

ufw allow "Apache Full"

fi

############################
# STATUS
############################

echo
echo "========================================="
echo "WordPress Installation Completed"
echo "========================================="
echo
echo "Website:"
echo "http://$(hostname -I | awk '{print $1}')"
echo
echo "Database Name : ${DB_NAME}"
echo "Database User : ${DB_USER}"
echo "Database Pass : ${DB_PASS}"
echo
echo "Complete the installation from your browser."
echo