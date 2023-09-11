#!/bin/bash

#PRIVATE_KEY=/keys/aspera
#SOURCE_ROOT=/home/aspera_user/transfers
#DEST_ROOT=/root/transfers

LOCAL_PRIVATE_KEY=~/.ssh/aspera
SOURCE_ROOT=/home/aspera_user/transfers
DEST_ROOT=/root/transfers

ssh -oStrictHostKeyChecking=no -i ${LOCAL_PRIVATE_KEY} root@168.1.21.210 << EOF
ascp -i -P 33001  /root/.ssh/aspera aspera_user@158.175.103.59:${SOURCE_ROOT}${faspex_pkg_directory} ${DEST_ROOT}
EOF
