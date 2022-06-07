" UI {{{
set nowrap                     " dont wrap long lines
set hidden                     " hide buffers, dont unload them, this fixes losing syntax on buffer change
set number                     " show line numbers
set relativenumber             " use relative lines
set title                      " show file name in window title
set scrolloff=5                " keep the cursorline 5 lines away from top and bottom of screen
set cursorline                 " highlight line with cursor
set showmatch                  " show matching brackets
set matchpairs+=<:>            " make < and > match as well
set mouse=a                    " enable mouse for scrolling
set showcmd                    " show current command in bottom right
set laststatus=2               " always show airline
set wildmenu                   " visual autocomplete for command menu
set wildcharm=<TAB>            " auto completetion hotkey
set wildignore+=node_modules/* " ignore node modules
set list                       " show invisible characters
set listchars=tab:→\ ,trail:⋅  " list chars
set fillchars=vert:│           " set vert split character to taller line
" }}}


" Splits {{{

set splitbelow   " open new splits to bottom
set splitright   " open new splits to right

" }}}


" Searching {{{

set ignorecase   " ignore case in search patterns
set smartcase    " override the 'ignorecase' option if the search pattern contains upper case characters
set incsearch    " search as characters are entered
set hlsearch     " highlight matches

" }}}


" Indenting {{{

set autoindent   " automatically set indent of new line
set smartindent  " do smart autoindenting when starting a new line

" }}}


" Folding {{{

set foldenable        " enable folding
set foldmethod=indent " fold based on indent level
set foldlevel=10      " open most folds by default
set foldnestmax=10    " 10 nested fold max
set foldclose=all

" }}}


