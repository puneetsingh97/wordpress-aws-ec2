#!/bin/bash

#===============================================================================
# Script Name : install_restore.sh
# Description : Install restore.sh on Linux
# Author      : Your Name
# Version     : 1.0
#===============================================================================

set -e

SCRIPT_NAME="restore.sh"
INSTALL_DIR="/usr/local/bin"
SOURCE_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "========================================"
echo " Installing ${SCRIPT_NAME}"
echo "========================================"

# Check if running as root
if [[ $EUID -ne 0 ]]; then
    echo "ERROR: Please run this script as root."
    exit 1
fi

# Verify restore.sh exists
if [[ ! -f "${SOURCE_DIR}/${SCRIPT_NAME}" ]]; then
    echo "ERROR: ${SCRIPT_NAME} not found in ${SOURCE_DIR}"
    exit 1
fi

# Create installation directory if missing
mkdir -p "${INSTALL_DIR}"

# Copy script
cp "${SOURCE_DIR}/${SCRIPT_NAME}" "${INSTALL_DIR}/"

# Set permissions
chmod 755 "${INSTALL_DIR}/${SCRIPT_NAME}"

# Create symbolic link (optional)
ln -sf "${INSTALL_DIR}/${SCRIPT_NAME}" /usr/bin/restore

echo
echo "Installation completed successfully."
echo
echo "Installed Location : ${INSTALL_DIR}/${SCRIPT_NAME}"
echo "Command Available  : restore"
echo
echo "You can execute it using:"
echo "    restore"
echo "or"
echo "    ${INSTALL_DIR}/${SCRIPT_NAME}"
echo