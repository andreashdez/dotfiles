#!/bin/sh

wpctl set-volume @DEFAULT_AUDIO_SINK@ "$1"
wpctl get-volume @DEFAULT_AUDIO_SINK@ \
    | awk -F '.' '{ print $2 }' \
    > $WOBSOCK

