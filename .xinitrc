# xrdb and dbus need to be handled here since we're not using a
# desktop environment

sysmodmap=/etc/X11/xinit/Xmodmap
if [ -f $sysmodmap ]; then xmodmap $sysmodmap; fi
xset +fp /usr/share/fonts/local && xset fp rehash
xrdb -merge $HOME/.Xresources
xsetroot -cursor_name left_ptr
xsetroot -solid "#002b36"
hsetroot -solid "#002b36"
unclutter -root -idle 1 &

xset r rate 250 60

# following two lines to detect terminus properly?
# though not sure this is necessary

#following is duplicate of above... why did I stick it in here?
#xmodmap /etc/X11/xinit/Xmodmap

# cairo-compmgr seems to cause some occasional problem if started before 
# xmonad? could also just be the fact that I switch to cairo-compmgr-git
#cairo-compmgr &

#xcompmgr -f -D 6 &
#cairo-compmgr &

#xcompmgr -cC -f -D 6 &
#
gromit-mpx &
#
#xbindkeys -f /etc/X11/xinit/xbindkeysrc
#xbindkeys -f $HOME/.xbindkeysrc -X :0

#setxkbmap -option ctrl:swapcaps
setxkbmap -option ctrl:nocaps

# turn off pc-speaker
xset -b

# work on tight loops and flashing when changing windows manually in xmonad
# export SAL_USE_VCLPLUGIN=gen

RESTORE FOLLOWING BLOCK# D-Bus
dbuslaunch="`which dbus-launch 2>/dev/null`"
if [ -n "$dbuslaunch" ] && [ -x "$dbuslaunch" ] && [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
  eval `$dbuslaunch --sh-syntax --exit-with-session`
  eval `$dbuslaunch --auto-syntax`
fi

# xsetwacom set "Wacom ISDv4 E6 Finger touch" Mode "Absolute"
# Following are experimental values to improve two finger scroll response
# taptime needs to be higher than 25, 250 worked to detect two finger press/tap 
# for doubleclick
#xsetwacom set "Wacom ISDv4 E6 Finger touch" TapTime 25
_eraser_id="$(xsetwacom --list devices | grep ERASER | sed 's/^.*id:\s*\(\w*\)\W.*$/\1/')"
_stylus_id="$(xsetwacom --list devices | grep STYLUS | sed 's/^.*id:\s*\(\w*\)\W.*$/\1/')"
_touch_id="$(xsetwacom --list devices | grep TOUCH | sed 's/^.*id:\s*\(\w*\)\W.*$/\1/')"

#xsetwacom set "Wacom ISDv4 E6 Finger touch" Suppress 1
#xsetwacom set "Wacom ISDv4 E6 Finger touch" RawSample 20
#xsetwacom set "Wacom ISDv4 E6 Finger touch" ScrollDistance 40

# eraser needs a unique button for gromit-mpx until I sort it out in a better 
# way (nuked this since it really does screw up mypaint)
#xinput --set-button-map $_eraser_id "2 1 3 4 5 6 7"

# see https://wiki.archlinux.org/index.php/ConsoleKit
# and https://bbs.archlinux.org/viewtopic.php?pid=905725#p905725
#/home/es/bin/xbindkeys-slowstart &

# xrandr stuff
#xrandr --newmode $(gtf 1920 1200 35.00 | grep Modeline | sed "s/.*Modeline\s*\(.*\)/\1/")
#xrandr --addmode DP1 $(gtf 1920 1200 35.00 | grep Modeline | sed "s/.*Modeline\s*\(\".*\"\).*/\1/")
#/home/es/tmp/xrandr_cinemadisplay &

# must source environment for xbindkeys mouse bindings to function
# TODO: figure out why
. $HOME/.bash_profile
#xbindkeys
#/home/es/tmp/xrandr_quickset &
#taffybar &
#dunst &
#exec ck-launch-session gnome-session
#exec ck-launch-session xmonad

_xmonad () {
/usr/bin/xscreensaver -no-splash -no-capture-stderr &
xmonad
}

_gnome () {
exec ck-launch-session gnome-session
}

#_gnome
_xmonad
