#!/bin/bash

sudo yum update
sudo yum upgrade -y

sudo yum install httpd -y 

sudo systemctl enable httpd.service

sudo yum install git -y

sudo git clone https://github.com/vinisilvf/mundo-invertido.git

cd mundo-invertido
sudo cp -R * /var/www/html
