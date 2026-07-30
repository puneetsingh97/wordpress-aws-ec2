#!/bin/bash

###############################################################################
# Script Name : configure-firewall.sh
# Description : Configure UFW firewall for WordPress EC2 Server
# Author      : Puneet
###############################################################################

set -e

SSH_PORT=22

echo "==========================================================="
echo "Configuring Ubuntu Firewall (UFW)"
echo "==========================================================="

# Check root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root."
    exit 1
fi

# Install UFW if missing
if ! command -v ufw >/dev/null 2>&1; then
    apt update
    apt install -y ufw
fi

echo "Resetting firewall..."
ufw --force reset

echo "Setting default policies..."
ufw default deny incoming
ufw default allow outgoing

echo "Allowing SSH..."
ufw allow ${SSH_PORT}/tcp

echo "Allowing HTTP..."
ufw allow 80/tcp

echo "Allowing HTTPS..."
ufw allow 443/tcp

###########################################################################
# OPTIONAL
# Uncomment if this server hosts MySQL and another private server
# requires access.
###########################################################################

# ufw allow from 10.0.0.0/16 to any port 3306 proto tcp

###########################################################################

echo "Enabling UFW..."
ufw --force enable

echo
echo "Firewall Rules:"
ufw status numbered

echo
echo "Firewall configured successfully."