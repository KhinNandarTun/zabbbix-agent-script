#!/bin/bash

sudo apt -y update
sudo apt -y install zabbix-agent
read -p "Enter Server IP:" SERVERIP
read -p "Enter hostname:" HOSTNAME
echo 'Server='$SERVERIP | sudo tee -a /etc/zabbix/zabbix_agentd.conf
echo 'ListenPort=10050' | sudo tee -a /etc/zabbix/zabbix_agentd.conf
echo 'Hostname='$HOSTNAME | sudo tee -a /etc/zabbix/zabbix_agentd.conf
echo 'ServerActive=' | sudo tee -a /etc/zabbix/zabbix_agentd.conf
echo 'DebugLevel=4' | sudo tee -a /etc/zabbix/zabbix_agentd.conf
sudo systemctl restart zabbix-agent
exit 
