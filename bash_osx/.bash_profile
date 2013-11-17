# Source Bash Aliases
source ~/.bash_aliases

# Adding some directories to §PATH
# - Python environment
# - Homebrew install directory
export PATH=/usr/local/bin:$HOME/bin:$PATH

# Home for Python Virtual Environments
#export WORKON_HOME="~/Pythonprojects/Envs"
#source "/usr/local/bin/virtualenvwrapper.sh"

# Git Command Line helpers
source "$HOME/.bash_completion.d/git-completion.bash"
source "$HOME/.bash_completion.d/git-prompt.sh"
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
