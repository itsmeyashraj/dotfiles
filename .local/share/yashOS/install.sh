#!/bin/bash
git clone https://github.com/itsmeyashraj/dotfiles &&
mv $HOME/* -r $HOME/bakup/ && cp * -r $HOME/

# Don't update if already done
if ! [ -f /tmp/updatedone ]; then
	sudo pacman -Syyu &
        touch /tmp/updatedone
fi &

# source pkgs from seperate file
#packages=cat required-pkgs
#if ! sudo pacman -Si - < required-pkgs; then
#	paru -S - < required-pkgs;
#else
#	sudo pacman -S --noconfirm $packages
#fi
#echo $packages
sudo pacman -S - < required-pkgs &&
paru -S - < AUR &&
# pulseaudio -> pipewire
# prompt do you want to install pipewire? in dialog
while true; do
    read -p "Do you wish to install pipewire?" yn
    case $yn in
        [Yy]* ) sudo pacman -S pipewire pipewire-media-session pipewire-alsa pipewire-jack --noconfirm && sudo pacman -Rns pulseaudio-alsa gnome-bluetooth blueberry pulseaudio-bluetooth pulseaudio --noconfirm && sudo pacman -S pipewire-pulse blueberry --noconfirm ; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

# disable annoying colorscripts
colorscript -b bomber colorbars debian fade hex kaisen pipes1 pipes2 pipes-slim pukeskull rupees six tux xmonad

# make zsh cache directory for history saving
mkdir .cache/zsh/ && touch .cache/zsh/history

# uninstall bloat terminal
if -f [/usr/bin/termite]; then sudo pacman -Rns termite --noconfirm fi
if -f [/usr/bin/xfce4]; then 
	if -f [usr/bin/xfce4-terminal]; then
	sudo pacman -Rns xfce4-terminal --noconfirm
	fi
fi

# If on Arcolinux then
if [ `cat /etc/*-release | grep "DISTRIB_ID" | cut -d "=" -f2` == ArcoLinux ]; then
	sudo pacman -Rns arcolinux-alacritty-git
else
	:
fi

# All done message now
echo "Reboot now"
