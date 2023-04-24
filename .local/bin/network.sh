#!/bin/sh

nmcli con show --active \
    | tail --lines=+2 \
    | head --lines=-1 \
    | awk '{ print $1 }'

