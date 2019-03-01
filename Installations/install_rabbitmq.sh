#!/usr/bin/env bash

echo "Installing RabbitMQ -------------------------------------"
sudo curl -s https://packagecloud.io/install/repositories/rabbitmq/rabbitmq-server/script.deb.sh | sudo bash
sudo apt-get -y install rabbitmq-server