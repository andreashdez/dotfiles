#!/bin/sh

acpi --battery | awk -F ', ' '{print match($3, /[^ ]/) ? $2 " (" $3 ")" : $2}'

