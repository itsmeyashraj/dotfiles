# only source other files here
#------------------------------
# Functions
source "$ZDOTDIR/zsh-functions"

# Files
zsh_add_file "zsh-completions"
zsh_add_file "zsh-aliases"
zsh_add_file "zsh-vim-mode"
zsh_add_file "setopt"
zsh_add_file "colors"
zsh_add_file "functions"
zsh_add_file "history"
zsh_add_file "bindkey"


# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"
#zsh_add_plugin "marlonrichert/zsh-autocomplete"
zsh_add_plugin "romkatv/powerlevel10k"
zsh_add_plugin "agkozak/zsh-z"

# use for per-computer customization
if [ -f $HOME/.config/zsh/my ]; then
	zsh_add_file "my"
fi
