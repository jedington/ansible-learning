<!-- PROJECT SHIELDS -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]
[![Twitter][twitter-shield]][twitter-url]

<img src="https://readme-typing-svg.herokuapp.com?lines=Ansible%20Learning&size=30" alt="Ansible Learning"/> 

Recommended Knowledge Beforehand:
- Basics of VM tools: VMware / Hyper-V / Virtualbox.
- Linux: using commands, vi text editors.
- Foundational DevOps understanding.

## Pre-reqs
0. This entire set of installs & configurations of VMs will take up about 20 GBs of drive space.
    - Additionally wouldn't hurt to have a CPU that can handle the abrupt tasks of Vagrant/VirtualBox.
    - Approximately 8 GBs of RAM recommended to run the tasks as well.
1. Download and Install [VirtualBox](https://www.virtualbox.org). Use link for Windows.
2. Download and Install [Git](https://git-scm.com/downloads). Use link for Windows.
3. Download and Install [Vagrant](https://www.vagrantup.com/docs/installation). Use link for Windows.
    - [Example-Ubuntu-Linux]: `sudo apt install git vagrant virtualbox -y` (installs all 3)
4. Any variant of Bash CLI/Terminal is fine for Linux/Mac. <ins>__Use Git Bash for Windows__</ins>.
5. Clone this repo into your local client. We're going to force this into the user folder.
    - [Run] `git clone https://github.com/jedington/ansible-learning.git ~/ansible-learning`
6. Setup Vagrant, [getting started guide](https://learn.hashicorp.com/collections/vagrant/getting-started) from the source. Also, check out this cool [Cheat Sheet](https://gist.github.com/wpscholar/a49594e2e2b918f4d0c4).
    1. [Run] `vagrant init`
    2. Replace the default Vagrantfile with the one from this repo.
        - [Example-Linux] `sudo cp -f ~/ansible-learning/00-Vagrant/Vagrantfile ~/Vagrantfile`
        - [Example-Windows-GitBash] `cp -f ~/ansible-learning\\00-Vagrant\\Vagrantfile ~/Vagrantfile`
        - [NOTE] Feel free to read through the Vagrantfile and what it's doing. Really powerful.
    3. [Run] `vagrant up` (will take up to 20 minutes, sets up 7 VMs+scripts for configurations)
        - [Optional] `vagrant ssh-config` (shows SSH config of nodes; Vagrant [SSH Guide](https://www.vagrantup.com/docs/cli/ssh))
        - [Optional] `vagrant status` (checks states of machines; see [Cheat Sheet](https://gist.github.com/wpscholar/a49594e2e2b918f4d0c4) for more commands)
7. Setup the Controller.
    1. Log into the Controller Node.
        - [Run] `vagrant ssh controller`
    2. Clone this repo (again) into the Controller. We're going to force this into the user folder.
        - [Run] `git clone https://github.com/jedington/ansible-learning.git ~/ansible-learning/`
    3. Changing permissions to allow execution of scripts to setup Ansible.
        - [Run] `sudo chmod -R 755 ~/ansible-learning/01-Ansible`
    4. Replace the default Ansible 'ansible.cfg' (configuration) file with our own.
        - [Run] `sudo cp -f ~/ansible-learning/01-Ansible/ansible.cfg /etc/ansible/ansible.cfg`
    5. Auth for remote hosts (from within Controller).
        - [Run] `~/ansible-learning/01-Ansible/ssh-setup-example.sh`.
        - [Note] this will prompt for passwords for each VM; default password is `vagrant` 😊.

| ![Success!][project-screenshot] | 
|:--:| 
| *Success!* |

8. Configure Remote Nodes with Ansible! Run the playbook; feel free to customize 'all-setup.yml' file.
    - [Run] `sudo ansible-playbook ~/ansible-learning/01-Ansible/all-setup.yml`

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/jedington/ansible-learning.svg?style=for-the-badge
[contributors-url]: https://github.com/jedington/ansible-learning/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/jedington/ansible-learning.svg?style=for-the-badge
[forks-url]: https://github.com/jedington/ansible-learning/network/members
[stars-shield]: https://img.shields.io/github/stars/jedington/ansible-learning.svg?style=for-the-badge
[stars-url]: https://github.com/jedington/ansible-learning/stargazers
[issues-shield]: https://img.shields.io/github/issues/jedington/ansible-learning.svg?style=for-the-badge
[issues-url]: https://github.com/jedington/ansible-learning/issues
[license-shield]: https://img.shields.io/github/license/jedington/ansible-learning.svg?style=for-the-badge
[license-url]: https://github.com/jedington/ansible-learning/blob/master/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/julian-edington
[twitter-shield]: https://img.shields.io/twitter/follow/arcanicvoid?style=for-the-badge&logo=twitter&colorB=555
[twitter-url]: https://twitter.com/arcanicvoid
[project-screenshot]: images/success.png