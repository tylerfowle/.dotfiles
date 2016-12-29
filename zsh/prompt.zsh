autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh
source $DOTFILES/git/.git-prompt.sh

directory_name() {
  echo "%{$fg_bold[magenta]%}%c%{$reset_color%}"
}

branch_name() {
  echo "%{$fg[green]%}$(__git_ps1)%{$reset_color%}"
}

export PROMPT=$'$(directory_name)$(branch_name)\n› '
