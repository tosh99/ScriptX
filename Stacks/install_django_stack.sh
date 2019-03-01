#!/usr/bin/env bash

echo "Installing Django Server Dependencies --------------------------"
sudo -H pip3 install django
sudo -H pip3 install gunicorn
pip3 install django-cors-headers


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