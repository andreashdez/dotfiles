#!/bin/sh

if [ -z "$1" ]
then
    mount="/dev/nvme0n1p4"
else
    mount="$1"
fi

df --human-readable --local --portability "$mount" \
    | tail -n +2 \
    | awk ' { print $4 } '

