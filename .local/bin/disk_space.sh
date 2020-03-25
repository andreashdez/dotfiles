#!/bin/sh

df --human-readable --local --portability "${1:-/dev/nvme0n1p4}" \
    | tail -n +2 \
    | awk '{ print $4 }'

