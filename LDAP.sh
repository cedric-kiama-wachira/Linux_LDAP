#!/bin/bash

sudo apt lxd -y

sudo vi /etc/pam.d/sshd
auth    required       pam_listfile.so onerr=succeed  item=user  sense=deny  file=/etc/ssh/deniedusers

sudo vi /etc/ssh/deniedusers
root