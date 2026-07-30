#!/bin/bash

###############################################################################
# Script Name : install-nginx.sh
# Description : Install and Configure NGINX Web Server
# Author      : Puneet
# Version     : 1.0
###############################################################################

set -e

GREEN="\e[32m"
RED="\e[31m"
BLUE="\e[34m"
YELLOW="\e[33m"
END="\e[0m"

if [ "$EUID" -ne 0 ]; then
    echo -e "${RED}Run this script as root.${END}"
    exit 1
fi

echo -e "${BLUE}========================================${END}"
echo -e "${BLUE}      NGINX Installation Script         ${END}"
echo -e "${BLUE}========================================${END}"

source /etc/os-release

echo
echo -e "${YELLOW}Detected Operating System:${END} $PRETTY_NAME"
echo

###############################################################################
# Install NGINX
###############################################################################

case "$ID" in

ubuntu|debian)

    echo "Updating repositories..."
    apt update

    echo "Installing nginx..."
    apt install -y nginx

    ;;

rhel|rocky|almalinux|centos)

    echo "Installing EPEL (if required)..."
    dnf install -y epel-release || true

    echo "Installing nginx..."
    dnf install -y nginx

    ;;

*)

    echo "Unsupported Operating System."
    exit 1

esac

###############################################################################
# Enable Service
###############################################################################

echo
echo "Enabling nginx service..."

systemctl enable nginx
systemctl restart nginx

###############################################################################
# Firewall Configuration
###############################################################################

if systemctl is-active --quiet firewalld; then

    echo "Configuring Firewalld..."

    firewall-cmd --permanent --add-service=http
    firewall-cmd --permanent --add-service=https
    firewall-cmd --reload

fi

###############################################################################
# SELinux Configuration
###############################################################################

if command -v getenforce &>/dev/null; then

    if [ "$(getenforce)" != "Disabled" ]; then

        setsebool -P httpd_can_network_connect 1 || true

    fi

fi

###############################################################################
# Create Test Page
###############################################################################

cat > /usr/share/nginx/html/index.html <<EOF
<!DOCTYPE html>
<html>
<head>
<title>NGINX Successfully Installed</title>
<style>
body{
font-family:Arial;
background:#f5f5f5;
text-align:center;
padding-top:100px;
}
h1{
color:green;
}
</style>
</head>

<body>

<h1>NGINX Installation Successful</h1>

<p>This page was deployed using install-nginx.sh</p>

<p>Hostname: $(hostname)</p>

<p>Date: $(date)</p>

</body>
</html>
EOF

###############################################################################
# Validation
###############################################################################

echo
echo "Running validation..."

nginx -t

systemctl status nginx --no-pager

###############################################################################
# Get Server IP
###############################################################################

SERVER_IP=$(hostname -I | awk '{print $1}')

echo
echo -e "${GREEN}============================================${END}"
echo -e "${GREEN}NGINX Installation Completed Successfully${END}"
echo -e "${GREEN}============================================${END}"

echo
echo "Version:"
nginx -v

echo
echo "Server IP : $SERVER_IP"

echo
echo "Test URL:"
echo "http://$SERVER_IP"

echo
echo "Service Status:"
systemctl is-active nginx

echo
echo "Boot Status:"
systemctl is-enabled nginx

echo
echo "Installed Successfully."