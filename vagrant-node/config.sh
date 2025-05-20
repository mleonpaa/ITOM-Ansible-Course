#!/bin/bash

sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
sudo service ssh restart

echo 'root:vagrant' | sudo chpasswd
