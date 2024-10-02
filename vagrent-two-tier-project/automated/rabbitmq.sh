#!/bin/bash
sudo yum install epel-release -y
sudo yum update -y
sudo yum install wget -y
cd /tmp/
dnf -y install centos-release-rabbitmq-38
 dnf --enablerepo=centos-rabbitmq-38 -y install rabbitmq-server
 systemctl enable --now rabbitmq-server
 firewall-cmd --add-port=5672/tcp
 firewall-cmd --runtime-to-permanent
sudo systemctl start rabbitmq-server
sudo systemctl enable rabbitmq-server
sudo systemctl status rabbitmq-server
sudo sh -c 'echo "[{rabbit, [{loopback_users, []}]}]." > /etc/rabbitmq/rabbitmq.config'
sudo rabbitmqctl add_user test test
sudo rabbitmqctl set_user_tags test administrator
sudo systemctl restart rabbitmq-server


# Rabbit
#yum install socat -y
#yum install erlang -y
#yum install wget -y
#wget https://www.rabbitmq.com/releases/rabbitmq-server/v3.6.10/rabbitmq-server-3.6.10-1.el7.noarch.rpm
#rpm --import https://www.rabbitmq.com/rabbitmq-release-signing-key.asc
#yum update
#rpm -Uvh rabbitmq-server-3.6.10-1.el7.noarch.rpm
#systemctl start rabbitmq-server
#systemctl enable rabbitmq-server
#systemctl status rabbitmq-server
#echo "[{rabbit, [{loopback_users, []}]}]." > /etc/rabbitmq/rabbitmq.config
#rabbitmqctl add_user rabbit bunny
#rabbitmqctl set_user_tags rabbit administrator
#systemctl restart rabbitmq-server