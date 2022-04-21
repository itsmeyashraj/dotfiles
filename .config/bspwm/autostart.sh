#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#[ ! -s ~/.config/mpd/pid ] && mpd &


# Launch polybar
$HOME/.config/polybar/launch.sh &

# Launch sxhkd
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &

# Restore wallpaper
~/.config/bspwm/.fehbg

xsetroot -cursor_name left_ptr &

# start compositor
while pgrep -u $UID -x picom >/dev/null; do sleep 1; done
picom --config $HOME/.config/picom/picom.conf &

# polkit agent - using gnome's because it supports gtk theme
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# Launch notification daemon
dunst -config $HOME/.config/dunst/dunstrc.gruvbox &

# change cava colorschemes
CAVA_PATH="$HOME/.config/cava"
cp "$CAVA_PATH"/colorschemes/gruvbox "$CAVA_PATH"/config

# Autostart apps
clipmenud &
#flameshot &
