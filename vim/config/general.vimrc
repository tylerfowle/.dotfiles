" General Config {{{

syntax enable             " enable syntax processing
filetype plugin on        " load filetype-specific indent files
filetype indent on
set encoding=utf8         " set encoding
set t_Co=256              " explicitly tell vim that the terminal supports 256 colors
set ttyfast               " faster redrawing
set tags=tags;            " set tags location
set iskeyword+=-          " include - in keyword matching

" Set to local dir for faster network editing
set directory^=$HOME/nvim/tmp
set backupdir^=$HOME/nvim/tmp

" }}}
