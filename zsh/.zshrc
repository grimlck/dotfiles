# Source zsh config files
test -e $HOME/.zsh_aliases &&  source $HOME/.zsh_aliases

# Colors
test -e $HOME/.zsh_colors && source $HOME/.zsh_colors

# Appearance
test -e $HOME/.zsh_appearance && source $HOME/.zsh_appearance

# Keybindings
test -e $HOME/.zsh_keybind && source $HOME/.zsh_keybind

# Completion
test -e $HOME/.zsh_completion && source $HOME/.zsh_completion

# Prompt
test -e $HOME/.zsh_prompt && source $HOME/.zsh_prompt

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

# Directories
setopt auto_name_dirs
setopt auto_pushd   # cd +<TAB> to see cd history
setopt pushd_ignore_dups

# ENV_VARIABLES
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=$HOME/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# Path
export PATH=~/bin:$PATH

# Load AWS CLI auto complete if exists
test -f "/usr/local/share/zsh/site-functions/_aws" && source "/usr/local/share/zsh/site-functions/_aws"
