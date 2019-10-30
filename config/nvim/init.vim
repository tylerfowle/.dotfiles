set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

if exists('veonim')
    source /Users/tyler.fowle/.dotfiles/veonim/veonimrc
else
    source /Users/tyler.fowle/.dotfiles/vim/vimrc.symlink
endif
