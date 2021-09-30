#!/bin/bash
# this is optional
# example commands to setup ssh--might need to change/add root@'s

ssh-keygen -t rsa -b 4096 -C "Ansible Key"
ssh-copy-id -i $HOME/.ssh/id_rsa.pub vagrant@controller
ssh-copy-id -i $HOME/.ssh/id_rsa.pub vagrant@node1
ssh-copy-id -i $HOME/.ssh/id_rsa.pub vagrant@node2
ssh-copy-id -i $HOME/.ssh/id_rsa.pub vagrant@node3
ssh-copy-id -i $HOME/.ssh/id_rsa.pub vagrant@dev1
ssh-copy-id -i $HOME/.ssh/id_rsa.pub vagrant@dev2
ssh-copy-id -i $HOME/.ssh/id_rsa.pub vagrant@dev3
eval $(ssh-agent)
ssh-add
ansible -i ~/etc/hosts -m ping all

#- sudo ansible-playbook -i ~/etc/ansible/hosts all-setup.yml
# ^ run after setting up ssh/other auth options ^