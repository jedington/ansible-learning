#!/bin/bash
# use from vagrant host--make sure its in the same directory as Vagrantfile!

declare -A osInfo;
osInfo[/etc/debian_version]="apt"
osInfo[/etc/alpine-release]="apk"
osInfo[/etc/centos-release]="yum"
osInfo[/etc/fedora-release]="dnf"
osInfo[/etc/redhat-release]="yum"
# newer versions of RHEL and CentOS will start to use 
# 'dnf' instead of 'yum' from version 8.XX and forward.

for f in ${!osInfo[@]}
do
    if [[ -f $f ]];then
        package_manager=${osInfo[$f]}
    fi
done

sudo $package_manager update
sudo $package_manager upgrade
if [ $package_manager=="apt" ]
then
    sudo apt install software-properties-common -y
    sudo -E apt-add-repository -y 'ppa:deadsnakes/ppa'
    sudo -E apt-add-repository -y 'ppa:ansible/ansible'
    sudo apt update
fi

sudo $package_manager install git-all
sudo $package_manager install python3
sudo $package_manager update

#- sudo apt remove ansible && sudo apt --purge autoremove 
# ^ if older/stale ansible version exists ^
sudo $package_manager install ansible -y
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