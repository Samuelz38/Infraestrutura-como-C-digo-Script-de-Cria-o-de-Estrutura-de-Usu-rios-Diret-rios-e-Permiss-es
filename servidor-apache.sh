#!/bin/hash

echo "Começando o processo de Apache Serve....."

apt update -y
apt upgrade -y

echo "instalando dependências....."

apt install apache2 -y
apt install unzip -y

echo "verificando apache....."
systemctl status apache2
echo"===================================================================================================="

echo "criando servidor web...."

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html/

