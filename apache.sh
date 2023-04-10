#!/bin/bash
yum check-update
yum -y install firewalld
firewall-cmd --permanent --add-service=http
firewall-cmd --permanent --add-service=https
firewall-cmd --reload
yum -y install httpd
bash -c 'echo "Welcome to LUIT" > /var/www/html/index.html'
systemctl start httpd
