#!/bin/sh

wpctl get-volume @DEFAULT_AUDIO_SINK@ \
    | awk -F '.' '{ print $2 }'

