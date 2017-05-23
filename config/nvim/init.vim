set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source $DOTFILES/vim/vimrc.symlink
