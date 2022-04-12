#!/bin/bash
eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

xautolock -time 10 -locker slock &
xwallpaper --zoom $HOME/pics/wallpapers/madara-hashirama.png &
xset r rate 250 45 &
xrdb ~/.Xresources &
dwmbar &
xcompmgr &

exec dwm > /dev/null 2>&1
