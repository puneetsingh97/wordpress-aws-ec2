#!/bin/bash
###############################################################################
# Script Name : hardening.sh
# Author      : Puneet
# Purpose     : Linux OS Hardening
# OS          : RHEL 9 / Rocky 9 / AlmaLinux 9
###############################################################################

set -e

LOGFILE="/var/log/hardening.log"

exec > >(tee -a ${LOGFILE})
exec 2>&1

echo "======================================"
echo "Linux Hardening Started"
date
echo "======================================"

#################################################
# Check Root
#################################################

if [ "$EUID" -ne 0 ]; then
    echo "Run as root"
    exit 1
fi

#################################################
# Update System
#################################################

echo "Updating System..."

dnf -y update

#################################################
# Install Security Packages
#################################################

echo "Installing Security Packages..."

dnf install -y \
firewalld \
aide \
rsyslog \
audit \
policycoreutils-python-utils \
chrony \
openssh-server

#################################################
# Enable Services
#################################################

systemctl enable --now firewalld
systemctl enable --now auditd
systemctl enable --now chronyd
systemctl enable --now rsyslog

#################################################
# Configure Firewall
#################################################

firewall-cmd --permanent --add-service=ssh
firewall-cmd --reload

#################################################
# SSH Hardening
#################################################

SSHCFG="/etc/ssh/sshd_config"

cp $SSHCFG ${SSHCFG}.backup

sed -i 's/^#PermitRootLogin.*/PermitRootLogin no/' $SSHCFG
sed -i 's/^PermitRootLogin.*/PermitRootLogin no/' $SSHCFG

sed -i 's/^#PasswordAuthentication.*/PasswordAuthentication yes/' $SSHCFG

grep -q "^MaxAuthTries" $SSHCFG || echo "MaxAuthTries 3" >> $SSHCFG
grep -q "^ClientAliveInterval" $SSHCFG || echo "ClientAliveInterval 300" >> $SSHCFG
grep -q "^ClientAliveCountMax" $SSHCFG || echo "ClientAliveCountMax 2" >> $SSHCFG

systemctl restart sshd

#################################################
# Password Policy
#################################################

authselect select sssd with-faillock --force

cat <<EOF >> /etc/security/pwquality.conf

minlen = 12
dcredit = -1
ucredit = -1
lcredit = -1
ocredit = -1
retry = 3

EOF

#################################################
# Disable Ctrl-Alt-Del
#################################################

systemctl mask ctrl-alt-del.target

#################################################
# Enable Time Sync
#################################################

timedatectl set-ntp true

#################################################
# Kernel Hardening
#################################################

cat >/etc/sysctl.d/99-hardening.conf <<EOF

net.ipv4.ip_forward = 0
net.ipv4.conf.all.accept_redirects = 0
net.ipv4.conf.default.accept_redirects = 0
net.ipv4.conf.all.send_redirects = 0
net.ipv4.conf.default.send_redirects = 0
net.ipv4.conf.all.accept_source_route = 0
net.ipv4.conf.default.accept_source_route = 0
net.ipv4.conf.all.log_martians = 1
net.ipv4.icmp_echo_ignore_broadcasts = 1
net.ipv4.tcp_syncookies = 1

EOF

sysctl --system

#################################################
# Disable Unused Filesystems
#################################################

cat >/etc/modprobe.d/disablefs.conf <<EOF

install cramfs /bin/false
install freevxfs /bin/false
install jffs2 /bin/false
install hfs /bin/false
install hfsplus /bin/false
install squashfs /bin/false
install udf /bin/false

EOF

#################################################
# File Permissions
#################################################

chmod 600 /etc/shadow
chmod 644 /etc/passwd
chmod 600 /boot/grub2/grub.cfg || true

#################################################
# Remove Unused Packages
#################################################

dnf remove -y telnet rsh ypbind tftp-server xinetd || true

#################################################
# Enable AIDE
#################################################

aide --init

cp /var/lib/aide/aide.db.new.gz \
   /var/lib/aide/aide.db.gz

#################################################
# Login Banner
#################################################

cat >/etc/issue <<EOF

*****************************************************************
* This system is for authorized users only.                    *
* Unauthorized access is prohibited and monitored.             *
*****************************************************************

EOF

cp /etc/issue /etc/issue.net

#################################################
# Disable Core Dumps
#################################################

cat >/etc/security/limits.d/coredump.conf <<EOF

* hard core 0

EOF

#################################################
# Audit Rules
#################################################

systemctl restart auditd

#################################################
# SELinux
#################################################

setenforce 1 || true

sed -i 's/^SELINUX=.*/SELINUX=enforcing/' /etc/selinux/config

#################################################
# Automatic Security Updates
#################################################

dnf install -y dnf-automatic

systemctl enable --now dnf-automatic.timer

#################################################
# Summary
#################################################

echo
echo "======================================"
echo "Linux Hardening Completed Successfully"
echo "======================================"