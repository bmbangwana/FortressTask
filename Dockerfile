# Image
FROM alpine:latest

# install vsftpd (FTP server for Linux systems)
RUN apk add --update vsftpd

# create ftp user account
RUN adduser -D admin 

# Remove write permissions for the home directory
RUN chmod a-w /home/admin

# Copy the vsftpd configuration file
COPY vsftpd.conf /etc/vsftpd/vsftpd.conf

# Copy the password script into the image
COPY vsftpd-passwd.sh /usr/sbin/vsftpd-passwd.sh

# Give executable permission to script
RUN chmod +x /usr/sbin/vsftpd-passwd.sh

# Expose FTP port and Passive port
EXPOSE 21 21100-21110

# Start vsftpd server
CMD ["/usr/sbin/vsftpd-passwd.sh"]

# Create a test file
RUN echo "This is a test file." > /home/admin/test.txt
