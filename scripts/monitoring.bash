#!/bin/bash

############################################################
# Script Name : install_monitoring.sh
# Purpose     : Install monitoring.sh on Linux
# Author      : Your Name
############################################################

set -e

SCRIPT_NAME="monitoring.sh"
INSTALL_DIR="/opt/monitoring"
SERVICE_NAME="monitoring"

echo "======================================="
echo " Monitoring Script Installation"
echo "======================================="

# Root check
if [[ $EUID -ne 0 ]]; then
    echo "Please run as root."
    exit 1
fi

# Check script exists
if [[ ! -f "$SCRIPT_NAME" ]]; then
    echo "ERROR: $SCRIPT_NAME not found in current directory."
    exit 1
fi

echo "Creating installation directory..."

mkdir -p "$INSTALL_DIR"

echo "Copying monitoring script..."

cp "$SCRIPT_NAME" "$INSTALL_DIR/"

chmod +x "$INSTALL_DIR/$SCRIPT_NAME"

echo "Creating symbolic link..."

ln -sf "$INSTALL_DIR/$SCRIPT_NAME" /usr/local/bin/monitoring

echo "Creating systemd service..."

cat <<EOF >/etc/systemd/system/${SERVICE_NAME}.service
[Unit]
Description=System Monitoring Script
After=network.target

[Service]
Type=simple
ExecStart=${INSTALL_DIR}/${SCRIPT_NAME}
Restart=always
RestartSec=5
User=root

[Install]
WantedBy=multi-user.target
EOF

echo "Reloading systemd..."

systemctl daemon-reload

echo "Enabling service..."

systemctl enable ${SERVICE_NAME}

echo "Starting service..."

systemctl restart ${SERVICE_NAME}

echo
echo "Installation completed successfully."
echo
echo "Commands:"
echo "  monitoring"
echo "  systemctl status monitoring"
echo "  journalctl -u monitoring -f"