# GIT Aliases
alias clean='git com && git branch --merged | grep -v "\*" | xargs -n 1 git branch -d && clr'
alias readme='date=_$(date +"%m-%d-%Y_%I-%M-%S") && echo $date && git cob update-readme$date && git ac "update readme" && git comp && git merge update-readme$date && git push'
