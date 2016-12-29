# GIT Aliases
alias clean='git com && git branch --merged | grep -v "\*" | xargs -n 1 git branch -d && clr'
