#!/bin/sh

acpi --battery \
    | head -n 1 \
    | awk -F ', ' '{ print match($3, /[^ ]/) ? $2 " (" $3 ")" : $2 }'

