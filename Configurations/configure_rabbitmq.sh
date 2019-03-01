#!/usr/bin/env bash

echo "Activating RabbitMQ -------------------------------------"
sudo rabbitmq-plugins enable rabbitmq_management
sudo rabbitmq-plugins enable rabbitmq_stomp
sudo rabbitmq-plugins enable rabbitmq_web_stomp

echo "Creating RabbitMQ Users ---------------------------------"
sudo rabbitmqctl add_user user pass
sudo rabbitmqctl set_user_tags user administrator
sudo rabbitmqctl set_permissions -p / user ".*" ".*" ".*"