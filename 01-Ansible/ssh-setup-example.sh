#!/bin/bash
# this method is optional # passwords for vagrant username are: vagrant

# yes '' | ssh-keygen -t rsa -b 4096 -C "Ansible Key" -N '' > /dev/null
# # ^^ Completely no prompts or showing RSA token already made ^^

ssh-keygen -t rsa -b 2048 -C "Ansible Key" -N '' # <<<$'\n'
# ^^ better option, will prompt if it already exists ^^
ssh-copy-id -i $HOME/.ssh/id_rsa.pub vagrant@controller
ssh-copy-id -i $HOME/.ssh/id_rsa.pub vagrant@node1
ssh-copy-id -i $HOME/.ssh/id_rsa.pub vagrant@node2
ssh-copy-id -i $HOME/.ssh/id_rsa.pub vagrant@node3
ssh-copy-id -i $HOME/.ssh/id_rsa.pub vagrant@dev1
ssh-copy-id -i $HOME/.ssh/id_rsa.pub vagrant@dev2
ssh-copy-id -i $HOME/.ssh/id_rsa.pub vagrant@dev3
eval $(ssh-agent)
ssh-add
ansible -m ping all