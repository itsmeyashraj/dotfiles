typeset -U PATH path
export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SDL_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'
export LANG=en_US.UTF-8

# Other XDG paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_STATE_HOME=${XDG_STATE_HOME="$HOME/.local/state"}

# Disable files
export LESSHISTFILE=-

# Doesn't seem to work
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
export ANDROID_AVD_HOME="$XDG_DATA_HOME"/android
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME"/android
export ADB_VENDOR_KEY="$XDG_CONFIG_HOME"/android

# Fixing Paths
export GEM_PATH="$XDG_DATA_HOME/ruby/gems"
export GEM_SPEC_CACHE="$XDG_DATA_HOME/ruby/specs"
export GEM_HOME="$XDG_DATA_HOME/ruby/gems"
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export GOPATH="$XDG_DATA_HOME"/go
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
ZDOTDIR="$XDG_CONFIG_HOME"/zsh
export HISTFILE="$XDG_CACHE_HOME"/zsh/history
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME/ripgrep/ripgreprc"
export STARSHIP_CONFIG=~/.config/zsh/starship.toml
export _Z_DATA="$XDG_DATA_HOME/z"
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc

# Scaling
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_SCALE_FACTOR=1
export QT_SCREEN_SCALE_FACTORS="1;1;1"
#export GDK_SCALE=1
#export GDK_DPI_SCALE=1

# Default Apps
export EDITOR="nvim"
export READER="zathura"
export VISUAL="nvim"
export TERMINAL="alacritty"
export BROWSER="brave"
export VIDEO="mpv"
export IMAGE="sxiv -b -a"
export COLORTERM="truecolor"
export OPENER="xdg-open"
export PAGER="less"
export CM_LAUNCHER=rofi
export CM_SELECTIONS="clipboard"
export CM_MAX_CLIPS=10
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad
export GREP_OPTION="--color=auto"
export GREP_COLOR="3;33"
export LESS="--ignore-case --raw-control-chars"

# Path
path=("$XDG_DATA_HOME/ruby/gems/bin" "$HOME/go/bin" "$HOME/.local/share/cargo/bin" "$XDG_DATA_HOME/npm/bin" "$HOME/.local/bin" "$HOME/.bin" "$HOME/.config/bspwm/scripts" "$path[@]")
export PATH
