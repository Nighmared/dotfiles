#for config editing hehe
alias econf="code $HOME/.config/zsh/"
alias rlconf="ZSH_CONF_DEBUG=1 source $HOME/.config/zsh/.zshrc"

#stupid python versions
# alias python="python3.13"
# alias pip="pip3.13" # these mess stuff up, now symlinked /bin/python to homebrew binary

#grepi
alias grepi="grep -i "
alias grepir="grep -ir "
alias grepirc="grep -ir -C 5 "

#go to zsh conf dir
alias tozshconf="cd ~/.config/zsh"

#alt +space gives special (non-breaking) space, which is never what we want
alias " grep"="grep"
alias " grepi"="grepi"

# funi git commands
alias "git-refresh"="git merge origin/master --no-edit --ff; git push"
