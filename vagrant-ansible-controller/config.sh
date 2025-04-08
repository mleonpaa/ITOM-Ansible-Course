#!/bin/bash


sudo apt-get update -y
sudo apt-get install build-essential linux-headers-$(uname -r) -y
sudo apt-get install virtualbox-guest-dkms -y

sleep 10


#sudo apt remove ansible -y
#sudo apt --purge autoremove -y

#sudo apt-get update -y
#sudo apt upgrade -y
#sudo apt -y install software-properties-common
#sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get install ansible -y


sleep 5

sudo sed -i 's/prohibit-password/yes/g' /etc/ssh/sshd_config
sudo service ssh restart

echo 'root:vagrant' | sudo chpasswd

sudo unlink /usr/bin/python
