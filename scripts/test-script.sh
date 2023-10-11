#!/bin/bash

PRIVATE_KEY=$HOME/keys/aspera
SOURCE_ROOT=${faspex_pkg_directory}
DEST_ROOT=/root/transfers
SOURCE_HOST=https://<source-ip>
DEST_HOST=ssh://<dest-ip>
DEST_USERNAME=root
SOURCE_USERNAME=xxx
SOURCE_PASSWORD=yyy
TARGET_RATE=100000

TRANSFER_SPEC='{"target_rate_kbps":'"$TARGET_RATE"'}'
TRANSFER_INFO='{"url":"'"$SOURCE_HOST"'","username":"'"$SOURCE_USERNAME"'","password":"'"$SOURCE_PASSWORD"'"}'

ascli \
    server \
    upload "${SOURCE_ROOT}" \
    --progress=none \
    --url=${DEST_HOST} \
    --username=${DEST_USERNAME} \
    --ssh-keys=${PRIVATE_KEY} \
    --to-folder=${DEST_ROOT} \
    --insecure=yes \
    --ts=@json:${TRANSFER_SPEC} \
    --transfer=node \
    --transfer-info=@json:${TRANSFER_INFO}

