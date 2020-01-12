#!/usr/bin/env bash

echo "Installing MySQL ----------------------------------------"
sudo apt-get install libssl-dev
sudo apt-get -y install mysql-server
sudo apt-get -y install libmysqlclient-dev
