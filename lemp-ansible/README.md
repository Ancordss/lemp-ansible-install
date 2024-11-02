# Ansible for LEMP Stack (Linux, Nginx, MySQL, PHP)
Quickly install and configure the LEMP stack (Linux, Nginx, MySQL, PHP) on Ubuntu servers using this Ansible playbook.

## Prerequisites
for centos 9
Ansible on your machine
python3


## Setup
Update your inventory in the hosts file with your server's IP.
Configure necessary variables in group_vars/all.

## Usage
Run the playbook with:

`ansible-playbook -i hosts site.yml`

## Roles
update: System update
nginx: Nginx server
php: PHP and extensions
mysql: MySQL database
restartsvcs: Service restarts
Customize site.yml to include or exclude specific roles as needed.

## Support
For issues and enhancements, please open a GitHub issue.



### centos7 issues

- CentOS 7 does not have active support so we need to use a greater version of centos.



pip3 install PyMySQL
