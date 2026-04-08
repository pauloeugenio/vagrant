#!/usr/bin/env bash
echo "instalacao e execucao do setup"
dnf install -y httpd
mkdir -p /var/www/html
cp -r /vagrant/html/. /var/www/html/
systemctl enable httpd
systemctl start httpd
