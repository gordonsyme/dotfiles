export HISTCONTROL=ignoreboth:erasedups
shopt -s histappend

if [ -d "/opt/homebrew/bin" ]; then
  export PATH="/opt/homebrew/bin:${PATH}"
fi

if [ -f "$(brew --prefix)/etc/bash_completion" ]; then
  source "$(brew --prefix)/etc/bash_completion"
fi

export EDITOR=vim
export PS1="[\u@\[\e[0;32m\]\h\[\e[0m\] \w]$ "

if [ -d "${HOME}/bin" ]; then
  export PATH="${PATH}:${HOME}/bin"
fi

GRAALVM_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java8-20.1.0/Contents/Home
if [ -d "${GRAALVM_HOME}/bin" ]; then
  export PATH="$PATH:${GRAALVM_HOME}/bin/"
  export JAVA_HOME="${GRAALVM_HOME}"
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

if [ -e ~/.iterm2_shell_integration.bash ]; then
  source ~/.iterm2_shell_integration.bash
fi

# Leiningen tries to use `gpg` by default
export LEIN_GPG=/usr/local/MacGPG2/bin/gpg2

export GOPATH=${HOME}/Development/go-workspace
CDPATH=:/Users/gordon/Development
