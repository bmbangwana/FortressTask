#!/bin/sh

# Set the FTP user password
echo "admin:${FTP_PASSWORD}" | chpasswd

# Start vsftpd
/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf || {echo 'vsftpd failed to start'}
