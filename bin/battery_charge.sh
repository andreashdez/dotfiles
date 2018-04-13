#!/bin/bash

# Script used by systemd timer unit to notify low battery charge

acpi --battery | awk '/Discharging/ { if (int($4) < 15) print $4 " " $5 " " $6 }' \
               | xargs -ri notify-send --urgency=critical "WARNING: Low battery"  "Battery is at {}"

