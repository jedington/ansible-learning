#!/bin/bash
sudo apt-get update
sudo apt-get install software-properties-common -y

echo "
10.10.10.11 node1
10.10.10.12 node2
10.10.10.13 node3
10.10.10.21 dev1
10.10.10.22 dev2
10.10.10.23 dev3
" >> /etc/hosts