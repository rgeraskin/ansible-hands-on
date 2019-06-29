#!/bin/sh

# to avoid the bug in ansible get_url that currently not allows using a file location for the checksum argument
sudo yum -y install epel-release
sudo yum -y update ansible


ansible qa-servers -m get_url -a "url=http://software.xyzcorp.com/enigma.tgz dest=/tmp checksum='sha256:http://software.xyzcorp.com/enigma-checksum.txt'"
ansible qa-servers -b -m unarchive -a "src=/tmp/enigma.tgz dest=/opt/ remote_src=yes"
ansible qa-servers -b -m lineinfile -a "regexp=DEPLOY_CODE line=CODE_RED path=/opt/enigma/details.txt"
ansible qa-servers -b -m file -a "state=directory recurse=yes path=/opt/enigma/secret/ group=protected"
ansible all -b -m file -a "state=absent path=/opt/enigma/tmp/deployment-passwords.txt"
