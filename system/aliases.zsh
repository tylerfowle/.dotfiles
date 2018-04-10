# Jump to locations
alias cdn='cd ~/Repos/fdp-devops/code/cdn'
alias repos='cd ~/Repos'

# Other
alias la="ls -Ga"
alias ..="cd .."
alias o="open ."
alias list="ls -1"
alias sassvarsfiles='grep -Rnco "\$.*:" .'
alias sassvars='grep -Rh "\$.\S*:" .'

# Edit files quickly
alias editbash="e ~/.bash_profile"
alias editdot="e ~/.dotfiles"
alias editvim="e ~/.dotfiles/vim/vimrc.symlink"

# dtags - tag and cd to directories
alias dt=". ~/go/src/github.com/tylerfowle/dtags/dt"

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

# New Projects copy gulp3
alias dup='mkdir html && ditto ~/Repos/fed-framework/gulp3/ ./html'

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

##keep the last focused finder window up to date when cd in terminal
#function chpwd() {
#  osascript -e 'on run pwd
#  set f to posix file pwd
#  tell app "Finder"
#    if number of Finder windows is 0 then
#      open f
#    else
#      set target of window 1 to f
#    end
#  end
#  end' "$PWD" > /dev/null
#}

