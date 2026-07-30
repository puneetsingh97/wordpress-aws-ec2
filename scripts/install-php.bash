#!/bin/bash

################################################################################
# Script Name : install-php.sh
# Description : Install PHP and required extensions for WordPress
# OS          : Ubuntu 24.04 LTS
# Author      : Puneet
################################################################################

set -e

PHP_VERSION="8.3"

echo "=========================================="
echo " Installing PHP ${PHP_VERSION}"
echo "=========================================="

# Ensure script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root or using sudo."
    exit 1
fi

echo "Updating package repository..."
apt update

echo "Installing PHP and extensions..."

apt install -y \
php${PHP_VERSION} \
php${PHP_VERSION}-fpm \
php${PHP_VERSION}-cli \
php${PHP_VERSION}-common \
php${PHP_VERSION}-mysql \
php${PHP_VERSION}-curl \
php${PHP_VERSION}-gd \
php${PHP_VERSION}-mbstring \
php${PHP_VERSION}-xml \
php${PHP_VERSION}-xmlrpc \
php${PHP_VERSION}-soap \
php${PHP_VERSION}-intl \
php${PHP_VERSION}-zip \
php${PHP_VERSION}-bcmath \
php${PHP_VERSION}-imagick \
php${PHP_VERSION}-opcache \
php${PHP_VERSION}-readline \
php${PHP_VERSION}-redis \
php${PHP_VERSION}-imap \
php${PHP_VERSION}-ldap \
php${PHP_VERSION}-gmp \
php${PHP_VERSION}-sqlite3 \
php${PHP_VERSION}-cgi

echo "Enabling PHP-FPM service..."

systemctl enable php${PHP_VERSION}-fpm
systemctl restart php${PHP_VERSION}-fpm

echo
echo "Installed PHP Version:"
php -v

echo
echo "Loaded PHP Modules:"
php -m

echo
echo "PHP-FPM Status:"
systemctl status php${PHP_VERSION}-fpm --no-pager

echo
echo "=========================================="
echo " PHP Installation Completed Successfully"
echo "=========================================="