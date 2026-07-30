#!/bin/bash

################################################################################
# Script Name : install-mariadb.sh
# Description : Install and Configure MariaDB Server for WordPress
# OS          : Ubuntu 24.04 LTS
# Author      : Puneet Singh
################################################################################

set -e

#-------------------------------#
# Variables
#-------------------------------#
DB_NAME="wordpress"
DB_USER="wpuser"
DB_PASSWORD="ChangeThisPassword123!"

# Colors
GREEN="\e[32m"
RED="\e[31m"
YELLOW="\e[33m"
NC="\e[0m"

echo -e "${GREEN}============================================${NC}"
echo -e "${GREEN} Installing MariaDB Server${NC}"
echo -e "${GREEN}============================================${NC}"

# Update repository
apt update

# Install MariaDB
apt install mariadb-server mariadb-client -y

# Enable and Start Service
systemctl enable mariadb
systemctl start mariadb

echo -e "${GREEN}MariaDB Installed Successfully${NC}"

# Verify status
systemctl --no-pager status mariadb

################################################################################
# Secure MariaDB
################################################################################

echo -e "${YELLOW}Securing MariaDB Installation...${NC}"

mysql -e "DELETE FROM mysql.user WHERE User='';"
mysql -e "DROP DATABASE IF EXISTS test;"
mysql -e "DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';"
mysql -e "FLUSH PRIVILEGES;"

################################################################################
# Create WordPress Database
################################################################################

echo -e "${GREEN}Creating WordPress Database...${NC}"

mysql <<EOF
CREATE DATABASE IF NOT EXISTS ${DB_NAME};
CREATE USER IF NOT EXISTS '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASSWORD}';
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'localhost';
FLUSH PRIVILEGES;
EOF

################################################################################
# Show Database Details
################################################################################

echo
echo -e "${GREEN}============================================${NC}"
echo -e "${GREEN} MariaDB Installation Completed${NC}"
echo -e "${GREEN}============================================${NC}"

echo "Database Name : ${DB_NAME}"
echo "Database User : ${DB_USER}"
echo "Database Pass : ${DB_PASSWORD}"

echo
echo "Installed Version:"
mysql --version

echo
echo "Existing Databases:"
mysql -e "SHOW DATABASES;"