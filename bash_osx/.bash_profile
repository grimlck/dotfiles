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

# Prompt with git branch indicator
PS1='\[\e[32m\][\u@\h \[\e[33m\]\W$(__git_ps1 " (%s)")\[\e[32m\]]\$ \[\e[0m\]'
