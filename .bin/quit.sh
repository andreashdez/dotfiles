#!/bin/sh



case "$1" in
    lock)
        "$HOME"/.bin/lock.sh
        ;;
    suspend)
        systemctl suspend
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|suspend|reboot|shutdown}"
        exit 2
esac

exit 0

