<!-- PROJECT SHIELDS -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]
[![Twitter][twitter-shield]][twitter-url]

# ansible-learning (with some Vagrant)
1. Install [VirtualBox](https://www.virtualbox.org) on your local host
2. Install [Vagrant](https://www.vagrantup.com/docs/installation) on your local host.
3. Setup Vagrant via instructions from source.
4. Run Vagrant via CLI of choice and begin with using Vagrantfile (replace default with the one from this repo).
5. Clone this repo into the Controller Node. Can use any means.
    - Navigate into Controller Node, then do something like below:
    - [Example] CLI/run: `git clone jedington/ansible-learning.git`
6. Copy files from '../01-Ansible/(copy-files-here)' into Controller Node '~/(paste-files-here)'. 
7. Figure out auth for remote hosts, can use 'ssh-setup-example.sh', edit the Node IPs if you need to.
    - [Example] CLI/run: `sudo ssh-setup-example.sh`.
8. CLI/run: `sudo ansible-playbook -i ~/ all-setup.yml`


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
[linkedin-url]: https://www.linkedin.com/in/julian-edington/
[twitter-shield]: https://img.shields.io/twitter/follow/arcanicvoid?style=for-the-badge&logo=twitter&colorB=555
[twitter-url]: https://twitter.com/arcanicvoid
