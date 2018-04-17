#!/bin/sh

ansible-playbook -i hosts -u root --private-key="~/.ssh/id_rsa_do4sakura" site.yml
