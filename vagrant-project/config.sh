#!/bin/bash

sudo apt-get update -y
sudo apt-get install build-essential linux-headers-$(uname -r) -y
sudo apt-get install virtualbox-guest-dkms -y

sleep 5

sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
sudo service ssh restart

echo 'root:vagrant' | sudo chpasswd
