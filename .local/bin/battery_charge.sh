#!/bin/sh

acpi --battery \
    | tail -n 1 \
    | awk -F ', ' '{ print match($3, /[^ ]/) ? $2 " (" $3 ")" : $2 }'

