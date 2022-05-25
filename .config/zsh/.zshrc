# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# some useful options
stty stop undef		# Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none')

# beeping is annoying
unsetopt BEEP

# search
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Colors
autoload -Uz colors && colors

# interactive
mcd() {
    mkdir -p $1
    cd $1
}

cd() {
	builtin cd "$@" && command exa -aG --color=always --icons --group-directories-first
}

# Key-bindings
bindkey "^p" up-line-or-beginning-search # Up
bindkey "^n" down-line-or-beginning-search # Down
bindkey "^k" up-line-or-beginning-search # Up
bindkey "^j" down-line-or-beginning-search # Down

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line

# Speedy Key
#xset r rate 200 40

# Useful Functions
source "$ZDOTDIR/zsh-functions"

# Normal files to source
zsh_add_file "completions"
zsh_add_file "zsh-aliases"
zsh_add_file "zsh-vim-mode"

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"
# For more plugins: https://github.com/unixorn/awesome-zsh-plugins
# More completions https://github.com/zsh-users/zsh-completions

colorscript random
#neofetch
eval "$(starship init zsh)"
