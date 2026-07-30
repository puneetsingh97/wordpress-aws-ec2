#!/bin/bash

# ============================================================
# Script Name : install_backup.sh
# Purpose     : Install backup.sh as a system-wide command
# Author      : Puneet Singh
# ============================================================

set -e

SCRIPT_NAME="backup.sh"
INSTALL_DIR="/usr/local/bin"
TARGET="${INSTALL_DIR}/backup"

echo "=========================================="
echo " Backup Script Installer"
echo "=========================================="

# Check for root
if [[ $EUID -ne 0 ]]; then
    echo "Please run as root or with sudo."
    exit 1
fi

# Check if backup.sh exists
if [[ ! -f "${SCRIPT_NAME}" ]]; then
    echo "Error: ${SCRIPT_NAME} not found in current directory."
    exit 1
fi

echo "Installing ${SCRIPT_NAME}..."

# Copy script
cp "${SCRIPT_NAME}" "${TARGET}"

# Make executable
chmod +x "${TARGET}"

echo "Installation completed."

echo
echo "Installed at:"
echo "   ${TARGET}"

echo
echo "You can now run:"
echo "   backup"

echo
echo "Testing installation..."
"${TARGET}" --help 2>/dev/null || true

echo
echo "Done."