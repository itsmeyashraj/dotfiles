#!/bin/bash
# Env
export GTK2_RC_FILES=$XDG_CONFIG_HOME/bspwm/gtk-2.0/gtkrc
export QT_QPA_PLATFORMTHEME=gtk2

# Launch polybar
#POLYTHEME=`grep 'THEME="' ~/.config/bspwm/bspwmrc | cut -d "=" -f2 | cut -d '"' -f2`
#reload polybar --reload mainbar-bspwm -c ~/.config/bspwm/polybar/polybar-$POLYTHEME
#reload polybar --reload mainbar-bspwm -c $XDG_CONFIG_HOME/bspwm/polybar/polybar-$THEME
reload polybar --reload mainbar-bspwm -c $XDG_CONFIG_HOME/bspwm/polybar/polybar-gruvbox

# Launch sxhkd
reload sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc

# Set Wallpaper
setwall $HOME/Pictures/Wallpapers/gruvbox/gruvbox_redsky.jpg

# Xresources
xrdb -merge ~/.config/bspwm/X11/gruvbox &

# Launch notification daemon
reload dunst -conf $XDG_CONFIG_HOME/dunst/dunstrc.gruvbox 

# Change alacritty colorscheme 
sed -i '/colors:/c\colors: *gruvbox-dark' $XDG_CONFIG_HOME/alacritty/alacritty.yml &

# Change cava colorschemes
CAVA_PATH="$XDG_CONFIG_HOME/cava"
cp "$CAVA_PATH"/colorschemes/gruvbox "$CAVA_PATH"/config &

# Replace neovim colorscheme
#sed -i "s/theme =.*$/theme = \"gruvbox\",/g" $HOME/.config/nvim/lua/custom/chadrc.lua

# Change glava color
sed -i '/COLOR/c\#define COLOR (#83a598 * GRADIENT)' $XDG_CONFIG_HOME/glava/bars.glsl &

# Change spicetify colorscheme
#COLOR_SCHEME="gruvbox"
#if grep -q $COLOR_SCHEME "$XDG_CONFIG_HOME/spicetify/config-xpui.ini";
#then
#  :
#else
#  spicetify config color_scheme $COLOR_SCHEME
#  spicetify apply --no-restart
#fi 

# Conky
reload conky -c $XDG_CONFIG_HOME/conky/dtos-small/gruvbox.conkyrc
#runonce plank 
