# Laptop configuration with Ansible
Manage laptop with Ansible.
Adapted for Ubuntu 20.04 LTS.
Few points are described in comments as manual actions.

## How to use
1. Git clone this repo
```
git clone git@github.com:nduhovnijs/laptop-ansible.git
```

2. Go through code - few points are described as manual actions in comments

3. Run as 
```
ansible-playbook -K -i inventory site.yml -c local
```