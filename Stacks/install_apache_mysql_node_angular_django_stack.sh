#!/usr/bin/env bash

echo "Updating System ------------------------------------------------"
sudo apt-get -y update

echo "Upgrading System -----------------------------------------------"
sudo apt-get -y upgrade

echo "Installing Pip -------------------------------------------------"
sudo apt-get -y install python3-pip

echo "Installing Apache ----------------------------------------------"
sudo apt-get -y install apache2
sudo apt-get -y install libapache2-mod-wsgi-py3

echo "Installing MySQL -----------------------------------------------"
sudo apt-get -y install mysql-server
sudo apt-get -y install libmysqlclient-dev

echo "Installing Django and Gunicorn ---------------------------------"
sudo -H pip3 install django
sudo -H pip3 install gunicorn
sudo -H pip3 install flask

echo "Installing Django Dependencies ---------------------------------"
pip3 install django-cors-headers
pip3 install flask_cors
pip3 install flask_mail

echo "Installing VCS Dependencies ------------------------------------"
pip3 install gitpython

echo "Installing Django DB Dependencies ------------------------------"
pip3 install mysqlclient
pip3 install psycopg2

echo "Installing AWS Dependencies ------------------------------------"
pip3 install boto

echo "Installing RabbitMQ Dependencies -------------------------------"
pip3 install stomp.py

echo "Installing Firebase Dependencies -------------------------------"
pip3 install pyfcm

echo "Installing DataScience Dependencies ----------------------------"
pip3 install numpy
pip3 install pandas

echo "Install NodeJS -------------------------------------------------"
sudo apt-get -y install curl
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs

echo "Install Angular"
sudo npm install -g @angular/cli
