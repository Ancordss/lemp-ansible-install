# Ansible for LEMP Stack (Linux, Nginx, MySQL, PHP)
Quickly install and configure the LEMP stack (Linux, Nginx, MySQL, PHP) on Ubuntu servers using this Ansible playbook.

## Prerequisites
Ansible on your machine
python3

## Setup
Configure necessary variables in group_vars/all.
if your on centos7

run:
```
bash <(curl -s https://raw.githubusercontent.com/Ancordss/lemp-ansible-install/refs/heads/main/lemp-ansible/centos7-fixer.sh)

```

## Usage
Run the playbook with:

`ansible-playbook -i inventory.ini site.yml`

or with

`sudo make run`

## Roles
update: System update
nginx: Nginx server
php: PHP and extensions
mysql: MySQL database
restartsvcs: Service restarts
apps: php config files 
Customize site.yml to include or exclude specific roles as needed.


### centos7 issues

- CentOS 7 does not have active support so we need to use a greater version of centos.

