#!/bin/sh

exec setxkbmap -layout us -variant dvp &
exec xset -dpms &
exec xset s off &
exec xset r rate 225 30 &
exec xsetroot -solid rgb:0f/0f/0f &
exec xsetroot -fg rgb:89/11/11 -bg rgb:22/22/22 -cursor_name trek &

if [ `xrandr | grep VGA1 | awk '{print $2}'` == "connected" ]; then
	xrandr --output VGA1 --gamma 1.15:1:1.05
	xrandr --newmode 1400x1050  179.26  1400 1504 1656 1912  1050 1051 1054 1103  -HSync +Vsync
	xrandr --addmode VGA1 1400x1050
#	xrandr --output LVDS1 --off
	xrandr --output VGA1 --mode 1400x1050
fi

if [ $DISPLAY == ":0" ]; then
	killall sysmod 2>/dev/null
	exec sysmod &
	exec urxvtd -f -q -o &
	exec alsactl restore &
	sleep 1
	exec urxvtc -e $HOME/bin/gotmux &
fi

exec unclutter -idle 3 -jitter 10 -root &
exec xmodmap $XDG_CONFIG_HOME/xmodmap &
exec ratpoison 2>/dev/null
