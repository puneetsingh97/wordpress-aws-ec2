#!/bin/bash

###############################################################################
# Script Name : update-system.sh
# Description : Updates the operating system and cleans old packages.
# Author      : Your Name
# Version     : 1.0
###############################################################################

set -e

echo "================================================="
echo "       Linux System Update Started"
echo "================================================="
echo

# Detect OS
if [ -f /etc/os-release ]; then
    source /etc/os-release
    OS=$ID
else
    echo "Cannot determine operating system."
    exit 1
fi

echo "Detected OS: $OS"
echo

case "$OS" in
    ubuntu|debian)
        sudo apt update
        sudo apt upgrade -y
        sudo apt autoremove -y
        sudo apt autoclean
        ;;
        
    rhel|centos|rocky|almalinux|fedora)
        if command -v dnf >/dev/null 2>&1; then
            sudo dnf upgrade -y
            sudo dnf autoremove -y
            sudo dnf clean all
        else
            sudo yum update -y
            sudo yum autoremove -y
            sudo yum clean all
        fi
        ;;
        
    opensuse*|sles)
        sudo zypper refresh
        sudo zypper update -y
        ;;
        
    arch)
        sudo pacman -Syu --noconfirm
        ;;
        
    *)
        echo "Unsupported Linux distribution."
        exit 1
        ;;
esac

echo
echo "================================================="
echo "      System Update Completed Successfully"
echo "================================================="