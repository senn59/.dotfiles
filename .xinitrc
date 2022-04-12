#!/bin/sh
eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

xautolock -time 10 -locker slock &
xwallpaper --zoom $HOME/pics/wallpapers/madara-hashirama.png &
xset r rate 250 45 &
xrdb ~/.Xresources &
dwmbar &
xcompmgr &

while type dwm >/dev/null ; do dwm && continue || break ; done
