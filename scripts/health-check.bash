#!/bin/bash
#
# Script Name : install-health-check.sh
# Purpose     : Install health-check.sh on Linux
# Author      : Puneet Singh
#

set -euo pipefail

SCRIPT_NAME="health-check.sh"
INSTALL_DIR="/usr/local/bin"
INSTALL_PATH="${INSTALL_DIR}/${SCRIPT_NAME}"

echo "========================================"
echo " Health Check Script Installer"
echo "========================================"

# Check root privileges
if [[ $EUID -ne 0 ]]; then
    echo "ERROR: Please run this installer as root or with sudo."
    exit 1
fi

# Check if source script exists
if [[ ! -f "${SCRIPT_NAME}" ]]; then
    echo "ERROR: ${SCRIPT_NAME} not found in current directory."
    exit 1
fi

# Create install directory if missing
mkdir -p "${INSTALL_DIR}"

# Copy script
cp "${SCRIPT_NAME}" "${INSTALL_PATH}"

# Set ownership
chown root:root "${INSTALL_PATH}"

# Set executable permission
chmod 755 "${INSTALL_PATH}"

echo
echo "Installation completed successfully."
echo
echo "Installed Location : ${INSTALL_PATH}"
echo

# Verify installation
if [[ -x "${INSTALL_PATH}" ]]; then
    echo "Verification: SUCCESS"
else
    echo "Verification: FAILED"
    exit 1
fi

echo
echo "You can now execute:"
echo "    health-check.sh"
echo