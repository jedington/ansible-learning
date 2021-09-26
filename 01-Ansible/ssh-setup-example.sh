#!/bin/sh
# store in controller host '~/<this file>'
# this is optional
# example commands to setup ssh--might need to change/add root@'s

ssh-keygen -t rsa -b 4096 -C "Ansible Key"
ssh-copy-id -i $HOME/.ssh/id_rsa.pub root@controller
ssh-copy-id -i $HOME/.ssh/id_rsa.pub root@node1
ssh-copy-id -i $HOME/.ssh/id_rsa.pub root@node2
ssh-copy-id -i $HOME/.ssh/id_rsa.pub root@node3
ssh-copy-id -i $HOME/.ssh/id_rsa.pub root@dev1
ssh-copy-id -i $HOME/.ssh/id_rsa.pub root@dev2
ssh-copy-id -i $HOME/.ssh/id_rsa.pub root@dev3
eval $(ssh-agent)
ssh-add
ansible -i ~/etc/hosts -m ping all

#- sudo ansible-playbook -i ~/ all-setup.yml
# ^ run after setting up ssh/other auth options ^