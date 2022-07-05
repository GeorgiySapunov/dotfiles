#!/bin/sh
# /lib/elogind/system-sleep/lock.sh
# Lock before suspend integration with elogind

username=gs
userhome=/home/$username
export XAUTHORITY="$userhome/.Xauthority"
export DISPLAY=":0.0"
case "${1}" in
    pre)
        su $username -c "fcit-remote -c; gpg-connect-agent --no-autostart reloadagent /bye; betterlockscreen -l dim 30" &
        sleep 1s;
        ;;
esac
