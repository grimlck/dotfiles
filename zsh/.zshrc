# Source zsh config files
test -e $HOME/.zsh_aliases &&  source $HOME/.zsh_aliases

# Colors
test -e $HOME/.zsh_colors && source $HOME/.zsh_colors

# Appearance
test -e $HOME/.zsh_appearance && source $HOME/.zsh_appearance

# Load and run compinit
autoload -U compinit
compinit -i

# History
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data

# Prompt
autoload -U promptinit
promptinit
PROMPT="[%n@%m %B %~ %b] %# %{$reset_color%}"
