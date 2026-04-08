#!/usr/bin/env bash
echo "instalacao e execucao do setup"

dnf install -y httpd
mkdir -p /var/www/html
cp -r /vagrant/html/. /var/www/html/
systemctl enable httpd
systemctl start httpd
sudo firewall-cmd --permanent --add-service=http #adiciona regra no firewall para permitir o acesso a pagina web
sudo firewall-cmd --reload #Recarrega as regras do firewall
