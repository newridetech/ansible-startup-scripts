#!/bin/sh
#######
export APP_ENV=""
export APP_DOMAIN=""
export DB_DATABASE=""
export DB_USERNAME=""
export DB_PASSWORD=""
export DB_ROOT_PASSWORD=""
#######
#######
apt-get install python-pip
pip install ansible
mkdir /tmp/ansible_startup
git clone git://github.com/newridetech/ansible-startup-scripts.git /tmp/ansible_startup
ansible-playbook -i 'localhost,' --connection=local /tmp/ansible_startup/presetup.yml
ansible-playbook -i 'localhost,' --connection=local /tmp/ansible_startup/setup.yml