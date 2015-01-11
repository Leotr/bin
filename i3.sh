#!/bin/sh
xset +fp /usr/share/fonts/local
xset +fm /home/leotr/.fonts
xset fp rehash
xset -dpms s off
sleep 15 && nm-applet &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
sh ~/.fehbg
pulseaudio --start

exec i3-with-shmlog
