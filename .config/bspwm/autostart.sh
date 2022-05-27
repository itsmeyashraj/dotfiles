#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

# Ev
export GTK2_RC_FILES=$HOME/.config/bspwm/gtk-2.0/gtkrc
export QT_QPA_PLATFORMTHEME=gtk2

# Safely kill programs
killall glava dunst sxhkd xfce4-power-manager flameshot

# Launch polybar
$HOME/.config/polybar/launch.sh &

# Launch sxhkd
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &

# Restore wallpaper
xwallpaper --zoom $HOME/Pictures/Wallpapers/gruvgirl-dark.png &

# X settings
xsetroot -cursor_name left_ptr &
#xsetroot -cursor left_ptr &
#xrdb -load ~/.config/bspwm/xresources &
xrdb -load ~/.config/bspwm/X11/xresources.gruvbox &

# start compositor
picom -b --config $HOME/.config/picom/picom.conf --experimental-backend &

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
#sed -i "s/theme =.*$/theme = \"gruvbox\",/g" $HOME/.config/nvim/lua/custom/chadrc.lua

# change glava color
sed -i '/COLOR/c\#define COLOR (#83a598 * GRADIENT)' $HOME/.config/glava/bars.glsl

# change spicetify colorscheme
#COLOR_SCHEME="gruvbox"
#if grep -q $COLOR_SCHEME "$HOME/.config/spicetify/config-xpui.ini";
#then
#  :
#else
#  spicetify config color_scheme $COLOR_SCHEME
#  spicetify apply --no-restart
#fi 

# Lockscreen
xss-lock -- betterlockscreen -l dimblur &

# Autostart apps
run flameshot &
run nm-applet &
dex -a -s ~/.config/autostart &
clipmenud &
xfce4-power-manager &
sleep 5 && glava --desktop &
#ffplay -nodisp -autoexit $HOME/Downloads/startup-01.mp3 &
