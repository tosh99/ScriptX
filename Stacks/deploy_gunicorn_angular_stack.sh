#!/usr/bin/env bash

echo "Create Project Directory -------------------"
mkdir ~/project

echo "Change Directory to Project"
cd ~/project

echo "Clone Project ------------------------------"
git clone frontend
git clone backend

echo "Change Directory to Project"
cd ~/project/backend

echo "Create Certificate --------------------------"
openssl req -x509 -newkey rsa:4096 -nodes -out cert.pem -keyout key.pem -days 365

echo "Deploy Django -------------------------------"
gunicorn --certfile cert.pem --keyfile key.pem -b 0.0.0.0:8000 -w 3 --daemon Backend.wsgi

echo "Build Angular --------------------------------"
cd ~/project/frontend
ng build --c=env

echo "Copy Build Files -----------------------------"
cd ~/project/frontend/dist
sudo cp -r * /var/www/html

