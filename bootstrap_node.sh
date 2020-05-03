#!/bin/bash

apt-get update
apt-get install -y sshpass

sshpass -p vagrant scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no vagrant@112.198.81.100:/home/vagrant/* /home/vagrant/.
bash /home/vagrant/join_cluster.sh
