#!/bin/bash
# use from vagrant host--make sure its in the same directory as Vagrantfile!
sudo apt update
sudo apt upgrade
sudo apt install software-properties-common -y
sudo -E apt-add-repository -y 'ppa:deadsnakes/ppa'
sudo -E apt-add-repository -y 'ppa:ansible/ansible'
sudo apt update
sudo apt install python3.9 # will change w/ new versions
sudo apt install ansible -y
#- ansible --version | grep "python version" # optional

echo "
10.10.10.10 controller
10.10.10.11 node1
10.10.10.12 node2
10.10.10.13 node3
10.10.10.21 dev1
10.10.10.22 dev2
10.10.10.23 dev3
" >> /etc/hosts