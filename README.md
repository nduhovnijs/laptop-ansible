# haven
Manage laptop with Ansible.
Adapted for Ubuntu 18.04.
Few points are described in comments as manual actions.

Git clone this repo
```
git clone git@github.com:nduhovnijs/laptop-ansible.git
```

On Ubuntu 18.04 - install fresh Ansible
```
$ sudo apt update
$ sudo apt install software-properties-common
$ sudo apt-add-repository --yes --update ppa:ansible/ansible
$ sudo apt install ansible
```

Run as 
```
ansible-playbook -K -i inventory site.yml -c local
```