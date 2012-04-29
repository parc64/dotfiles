# xrdb and dbus need to be handled here since we're not using a
# desktop environment

sysmodmap=/etc/X11/xinit/Xmodmap
if [ -f $sysmodmap ]; then xmodmap $sysmodmap; fi

xset +fp /usr/share/fonts/local
xset +fp /usr/share/fonts/lettergothic
xset fp rehash

xrdb -merge $HOME/.Xresources
xsetroot -cursor_name left_ptr
xsetroot -solid "#002b36"

xset r rate 250 60

setxkbmap -option ctrl:nocaps

# turn off pc-speaker
xset -b

#RESTORE FOLLOWING BLOCK# D-Bus
dbuslaunch="`which dbus-launch 2>/dev/null`"
if [ -n "$dbuslaunch" ] && [ -x "$dbuslaunch" ] && [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
  eval `$dbuslaunch --sh-syntax --exit-with-session`
  eval `$dbuslaunch --auto-syntax`
fi

xrandr --auto

#taffybar &
#dunst &
xmobar &

_xmonad () {
  /usr/bin/xscreensaver -no-splash -no-capture-stderr &
  xmonad
}

_gnome () {
  exec ck-launch-session gnome-session
}

#_gnome
_xmonad
