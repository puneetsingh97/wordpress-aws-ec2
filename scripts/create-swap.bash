#!/bin/bash

#########################################################################
# Script Name : create-swap.sh
# Description : Creates and enables Linux Swap File
# Author      : Puneet
# Version     : 1.0
#
# Usage:
#   ./create-swap.sh
#
# OR
#
#   ./create-swap.sh 8G
#
# Examples:
#   ./create-swap.sh 2G
#   ./create-swap.sh 4G
#   ./create-swap.sh 8G
#########################################################################

set -e

########################################
# Default Swap Size
########################################

SWAPSIZE=${1:-4G}
SWAPFILE="/swapfile"

########################################
# Colors
########################################

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[1;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

########################################
# Root Check
########################################

if [[ $EUID -ne 0 ]]; then
    echo -e "${RED}Please run as root.${NC}"
    exit 1
fi

########################################
# Existing Swap Check
########################################

if swapon --show | grep -q "^"; then
    echo -e "${YELLOW}Swap already exists.${NC}"
    swapon --show
    exit 0
fi

echo -e "${BLUE}Creating ${SWAPSIZE} swap file...${NC}"

########################################
# Create Swap File
########################################

if command -v fallocate >/dev/null 2>&1; then
    fallocate -l ${SWAPSIZE} ${SWAPFILE}
else
    dd if=/dev/zero of=${SWAPFILE} bs=1M count=$(numfmt --from=iec ${SWAPSIZE} | awk '{print int($1/1024/1024)}')
fi

########################################
# Permissions
########################################

chmod 600 ${SWAPFILE}

########################################
# Format Swap
########################################

mkswap ${SWAPFILE}

########################################
# Enable Swap
########################################

swapon ${SWAPFILE}

########################################
# Persist Across Reboot
########################################

grep -q "^${SWAPFILE}" /etc/fstab || \
echo "${SWAPFILE} none swap defaults 0 0" >> /etc/fstab

########################################
# Swappiness
########################################

sysctl -w vm.swappiness=10

grep -q "vm.swappiness" /etc/sysctl.conf || \
echo "vm.swappiness=10" >> /etc/sysctl.conf

########################################
# Cache Pressure
########################################

sysctl -w vm.vfs_cache_pressure=50

grep -q "vm.vfs_cache_pressure" /etc/sysctl.conf || \
echo "vm.vfs_cache_pressure=50" >> /etc/sysctl.conf

########################################
# Display Status
########################################

echo
echo -e "${GREEN}=========================================${NC}"
echo -e "${GREEN}Swap successfully configured.${NC}"
echo -e "${GREEN}=========================================${NC}"

echo
echo "Memory:"
free -h

echo
echo "Swap:"
swapon --show

echo
echo "fstab Entry:"
grep swap /etc/fstab

echo
echo "Kernel Parameters:"
sysctl vm.swappiness
sysctl vm.vfs_cache_pressure

echo
echo -e "${GREEN}Done.${NC}"