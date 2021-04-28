#!/bin/bash

set -exu

echo "==> Install Ansible"
apt -y update
apt -y install ansible

echo "==> Add user plexe to password-less sudoers"
echo "plexe        ALL=(ALL)       NOPASSWD: ALL" > /etc/sudoers.d/plexe

echo "==> Create directories to hold uploaded files"
mkdir -p ~plexe/src; chown plexe:plexe ~plexe/src
mkdir -p ~plexe/Documents; chown plexe:plexe ~plexe/Documents
