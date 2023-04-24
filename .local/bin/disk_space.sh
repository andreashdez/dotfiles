#!/bin/sh

df --human-readable --local --portability "${1:-/dev/nvme0n1p2}" \
    | tail --lines=+2 \
    | awk '{ print $4 }'

