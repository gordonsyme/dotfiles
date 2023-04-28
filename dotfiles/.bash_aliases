alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

__gordonsyme_git_alias () {
  alias "${1}"="${3}"
  local wrapper="__gordonsyme_git_wrap${2}"
  eval "${wrapper} () { __git_func_wrap ${2} ; }"
  complete -o bashdefault -o default -o nospace -F "${wrapper}" "${1}"
}

__gordonsyme_git_alias ga   _git_add      'git add'
__gordonsyme_git_alias gb   _git_branch   'git branch'
__gordonsyme_git_alias gc   _git_checkout 'git checkout'
__gordonsyme_git_alias gcln _git_clean    'git clean -i'
__gordonsyme_git_alias gd   _git_diff     'git diff'
__gordonsyme_git_alias gdc  _git_diff     'git diff --cached'
__gordonsyme_git_alias gl   _git_log      'git log'
__gordonsyme_git_alias glp  _git_log      'git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative'
__gordonsyme_git_alias gs   _git_status   'git status'
__gordonsyme_git_alias gstat _git_show    'git show --stat'
__gordonsyme_git_alias gfp  _git_fetch    'git fetch -p'
alias gvimgrep='GIT_PAGER=vim git grep -O'

alias vagrant_ssh_ports='vagrant ssh -- -L 8080:localhost:8080 -L 6005:localhost:6005 -L 6006:localhost:6006 -L 6007:localhost:6007 -L 6008:localhost:6008 -L 6017:localhost:6017 -L 60000:localhost:60000 -L 15672:localhost:16672 -L 6009:localhost:6009'

alias circle-get='curl --silent --request GET --header "Circle-Token: ${CIRCLE_TOKEN}" --header "Accept: application/json" --header "Content-Type: application/json"'
alias circle-post='curl --silent --request POST --header "Circle-Token: ${CIRCLE_TOKEN}" --header "Accept: application/json" --header "Content-Type: application/json"'
