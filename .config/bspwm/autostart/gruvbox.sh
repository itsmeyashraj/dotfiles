#!/bin/bash
#experiment
function reload {
  killall -q $1 &
  while pgrep -u $UID -x $1 >/dev/null; do sleep 1; done
  $@&
}

function runonce {
  if ! pidof -x $1 ;
  then
    $@&
  fi
}
##########
# Env
#export GTK2_RC_FILES=$HOME/.config/bspwm/gtk-2.0/gtkrc
#export QT_QPA_PLATFORMTHEME=gtk2

# Launch polybar
#reload polybar --reload mainbar-bspwm -c ~/.config/bspwm/polybar/polybar-gruvbox
reload polybar -c ~/.config/bspwm/polybar/polybar-gruvbox
#$HOME/.config/polybar/launch.sh

# Launch sxhkd
reload sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc

# Restore wallpaper
xwallpaper --zoom $HOME/Pictures/Wallpapers/gruvbox/gruvbox_redsky.jpg

# Xresources
xrdb -merge ~/.config/bspwm/X11/gruvbox

# Launch notification daemon
reload dunst -conf $HOME/.config/dunst/dunstrc.gruvbox 

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

# Conky
reload conky -c $HOME/.config/conky/dtos-small/gruvbox.conkyrc
#runonce plank 
#runonce ffplay -nodisp -autoexit $HOME/.config/dunst/sounds/Ubuntu/startup.wav &
