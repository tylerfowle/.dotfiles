# Jump to locations
alias cdn='cd ~/Repos/fdp-devops/code/cdn'
alias repos='cd ~/Repos'

# Other
alias ..="cd .."
alias o="open ."
alias hal="ls -hal"
alias list='colorls --sd -a -1'
alias lf='colorls --sd -a'
alias sassvarsfiles='grep -Rnco "\$.*:" .'
alias sassvars='grep -Rh "\$.\S*:" .'

# Edit files quickly
alias editbash="e ~/.bash_profile"
alias editdot="cd ~/.dotfiles && e ~/.dotfiles"
alias editvim="cd ~/.dotfiles && e ~/.dotfiles/vim/vimrc.symlink"

# dtags - tag and cd to directories
alias dt=". ~/go/src/github.com/tylerfowle/dtags/dt"

alias egd="eg d $@"

# update all the devops repos
# alias pullthatshit="cd ~/Repos/fdp-devops && git checkout master && git pull origin master && cd ./code && find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;"
# alias pullthatshit="cd ~/Repos/fdp-devops && git checkout master && git pull origin master && cd ./code && find . -mindepth 1 -maxdepth 1 -type d -print | parallel git -C {} pull \;"
alias para="find . -mindepth 1 -maxdepth 1 -type d -print | parallel 'echo \>\>\> {} && git -C {} pull' \;"

# taskpaper - quick access to edit tasks in vim
function tasks() {
  cd $TODO_DIR
  e $TODO_FILE
}

# reload config
alias reload!='. ~/.zshrc'

# gitline - github api script
alias gitline='/Users/tyler.fowle/Repos/gitline/gitline.sh'
alias gl='/Users/tyler.fowle/Repos/gitline/gitline.sh'

# New Projects copy gulp framework
# alias dup='ditto ~/Repos/fed-framework/gulp4/ ./'
function dup() {
  FILE=$1
  FROM="/Repos/fed-framework/gulp4/$FILE"
  TO="./$FILE"
  ditto ~$FROM $TO
}

# fix ctags
alias ctags="`brew --prefix`/bin/ctags"

# print all colors to screen
function colorcodes() {
  for i in {0..255}; do; printf "\x1b[38;5;${i}mcolour${i}\x1b[0m\n"; done
}

# find [string], in current directory, recursively, and fzf results
function strfindr() {
  grep --exclude-dir=.git -r . -e "$1" | fzf
}

# find [directory], in current directory, recursively, show size and sort by size
function filefindr() {
  find . -type d -name "$1" -print | xargs du -shc | gsort -h
}


# prettydiff with options
function gprettydiff() {
  ~/go/src/github.com/prettydiff/prettydiff/bin/prettydiff source:"$1" mode:"beautify" readmethod:"file" output:"$1" commline:"true" cssinsertlines:"true" insize:"2" preserve:"0" wrap:"0" braceline:"true" methodchain:"chain" summaryonly:"true" tagmerge:"false" spaceclose:"true" noleadzero:"true" html:"true" styleguide:"grunt" space:"false" $2
}

