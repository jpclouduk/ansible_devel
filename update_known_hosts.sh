#!/usr/bin/env bash

cp /dev/null ~/.ssh/known_hosts

for i in `egrep -v "^#|^$|^\[" /etc/ansible/hosts | sort -u`
do
ssh-keyscan -H $i >> ~/.ssh/known_hosts
done
