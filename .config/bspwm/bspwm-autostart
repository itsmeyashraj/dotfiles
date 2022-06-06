#!/bin/bash
#experiment
function reload {
  killall -9 $1 &
  while pgrep -u $UID -x $1 >/dev/null; do sleep 1; done
  $@&
}

function runonce {
  if ! pidof -x $1 ;
  then
    $@&
  fi
}
#####
# Constant autostart apps that won't change

# X settings
xsetroot -cursor_name left_ptr

# Start compositor
runonce picom -b --config $HOME/.config/picom/picom.conf --experimental-backend 

# Polkit agent - using gnome's because it supports gtk theme
runonce /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 

# Bspswallow
#pgrep bspswallow || bspswallow &

# Autostart apps
runonce flameshot 
runonce nm-applet 
dex -a -s ~/.config/autostart 
#runonce plank 
runonce clipmenud 
runonce xfce4-power-manager 
