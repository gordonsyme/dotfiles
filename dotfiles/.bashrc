export EDITOR=vim
export PS1="[\u@\[\e[0;32m\]\h\[\e[0m\] \w]$ "

if [ -d "${HOME}/bin" ]; then
  export PATH="${PATH}:${HOME}/bin"
fi

if [ -e ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi

if [ -e ~/.bash_functions ]; then
  source ~/.bash_functions
fi

CLICOLOR=1

if [ -e ~/.bash_aws_vars ]; then
  source ~/.bash_aws_vars
fi

if [ -e ~/.bash_circle_vars ]; then
  source ~/.bash_circle_vars
fi

# Leiningen tries to use `gpg` by default
export LEIN_GPG=/usr/local/MacGPG2/bin/gpg2
