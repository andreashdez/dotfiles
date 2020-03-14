#!/bin/sh

nmcli con show --active \
    | tail -n +2 \
    | awk '{print $1}'

