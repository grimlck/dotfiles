# Source Bash Aliases
source ~/.bash_aliases

# Adding some directories to §PATH
# - Python environment
# - Homebrew install directory
export PATH=/usr/local/bin:/usr/local/share/python:$PATH

# Home for Python Virtual Environments
export WORKON_HOME="~/Pythonprojects/Envs"
source "/usr/local/bin/virtualenvwrapper.sh"
