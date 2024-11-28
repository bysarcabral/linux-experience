#!/bin/bash

echo "Iniciando..."

echo "Atualizando o servidor..."
sudo apt-get update -y
apt-get upgrade -y

echo "Instalando o apache2..."
apt install apache2 -y

echo "Instalando o unzip..."
apt install unzip -y

echo "Baixando aplicação do GitHub..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio

echo "Instalando a aplicação no servidor..."
cp -R * /var/www/html

echo "Finalizado!"
