#!/bin/bash

###############################################################################
# Script Name : install-certbot.sh
# Description : Install and configure Certbot on Ubuntu
# Author      : Your Name
# Version     : 1.0
###############################################################################

set -euo pipefail

LOG_FILE="/var/log/install-certbot.log"

exec > >(tee -a "$LOG_FILE")
exec 2>&1

echo "======================================================="
echo " Installing Certbot"
echo " Started: $(date)"
echo "======================================================="

# Ensure script is run as root
if [[ $EUID -ne 0 ]]; then
    echo "ERROR: Please run as root or with sudo."
    exit 1
fi

echo "[1/8] Updating package repository..."
apt update

echo "[2/8] Installing Snap..."
apt install -y snapd

echo "[3/8] Enabling Snap service..."
systemctl enable --now snapd

echo "[4/8] Refreshing Snap..."
snap install core
snap refresh core

echo "[5/8] Removing old Certbot package if installed..."
apt remove -y certbot || true

echo "[6/8] Installing Certbot..."
snap install --classic certbot

echo "[7/8] Creating symbolic link..."
ln -sf /snap/bin/certbot /usr/bin/certbot

echo "[8/8] Verifying installation..."
certbot --version

echo
echo "Checking automatic renewal timer..."
systemctl list-timers | grep snap || true

echo
echo "Running dry-run renewal test..."
certbot renew --dry-run || true

echo
echo "======================================================="
echo " Certbot Installation Completed Successfully"
echo " Finished: $(date)"
echo "======================================================="

echo
echo "Installed Version:"
certbot --version

echo
echo "Next Step:"
echo "Obtain SSL certificate using:"
echo
echo "sudo certbot --nginx -d example.com -d www.example.com"
echo
echo "OR (Apache)"
echo
echo "sudo certbot --apache -d example.com -d www.example.com"