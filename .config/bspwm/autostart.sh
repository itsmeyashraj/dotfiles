#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#[ ! -s ~/.config/mpd/pid ] && mpd &

# Ev
GTK2_RC_FILES=$HOME/.config/bspwm/gtk-2.0/gtkrc
export GTK2_RC_FILES

killall glava picom sxhkd dunst xfce4-power-manager flameshot

# Launch polybar
$HOME/.config/polybar/launch.sh &

# Launch sxhkd
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &

# Restore wallpaper
~/.config/bspwm/.fehbg

# X settings
xsetroot -cursor_name left_ptr &
xrdb -load ~/.config/bspwm/xresources

# start compositor
picom --config $HOME/.config/picom/picom.conf &

# polkit agent - using gnome's because it supports gtk theme
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# Launch notification daemon
dunst -config $HOME/.config/dunst/dunstrc.gruvbox &

# Change alacritty colorscheme 
sed -i '/colors:/c\colors: *gruvbox-dark' $HOME/.config/alacritty/alacritty.yml

# change cava colorschemes
CAVA_PATH="$HOME/.config/cava"
cp "$CAVA_PATH"/colorschemes/gruvbox "$CAVA_PATH"/config

# replace neovim colorscheme
sed -i "s/theme =.*$/theme = \"gruvbox\",/g" $HOME/.config/nvim/lua/custom/chadrc.lua

# change glava color
sed -i '/COLOR/c\#define COLOR (#83a598 * GRADIENT)' $HOME/.config/glava/bars.glsl

# change spicetify colorscheme
COLOR_SCHEME="gruvbox"
if grep -q $COLOR_SCHEME "$HOME/.config/spicetify/config-xpui.ini";
then
  :
else
  spicetify config color_scheme $COLOR_SCHEME
  spicetify apply --no-restart
fi 

# Lockscreen
xss-lock -- betterlockscreen -l dimblur &

# Autostart apps
dex -a -s ~/.config/autostart &
clipmenud &
xfce4-power-manager &
# glava | should be in the end so that everything important loads up first
sleep 10 && glava --desktop &
