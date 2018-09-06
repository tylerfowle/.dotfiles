" ##############################################################################
" Plugins
" https://github.com/junegunn/vim-plug
" ##############################################################################

call plug#begin('~/.vim/plugged')
" Colorscheme {{{
" Plug 'exitface/synthwave.vim'
Plug 'morhetz/gruvbox'
" }}}
" UI {{{
Plug 'majutsushi/tagbar'                                                                     " Tagbar
Plug 'nathanaelkane/vim-indent-guides', {'on': ['IndentGuidesToggle','IndentGuidesOn']}      " indent guides
Plug 'vim-airline/vim-airline'                                                               " fancy statusline
Plug 'vim-airline/vim-airline-themes'                                                        " themes for airline
Plug 'airblade/vim-gitgutter'                                                                " Shows a git diff in the gutter (sign column) and stages/undoes hunks.
Plug 'junegunn/vim-peekaboo'                                                                 " shows registers in a sidebar
" }}}
" Utilities {{{
Plug 'ctrlpvim/ctrlp.vim'                                                                    " fuzzy file, buffer, mru, tag finder
Plug 'ton/vim-bufsurf'                                                                       " Navigate buffers based on history, like browser windows
Plug 'junegunn/vim-easy-align'                                                               " ga to align by character
Plug 'tpope/vim-repeat'                                                                      " enables repeating other supported plugins with the . command
Plug 'tpope/vim-surround'                                                                    " ysiw to surround word
Plug 'tpope/vim-commentary'                                                                  " easy commenting
Plug 'tpope/vim-fugitive'                                                                    " git wrapper
Plug 'raimondi/delimitmate'                                                                  " Auto close tags
Plug 'bronson/vim-trailing-whitespace'                                                       " This plugin causes all trailing whitespace to be highlighted in red.
Plug 'google/vim-searchindex'                                                                " show search position among all results
Plug 'markonm/traces.vim'                                                                    " highlight patterns and ranges for Ex commands
Plug 'triglav/vim-visual-increment'                                                          " use ctrl a/v to increment.decrement a visually selected block
Plug 'mileszs/ack.vim'                                                                       " ack for vim - replaces vimgrep
Plug 'brooth/far.vim'                                                                        " find and replace with :Far foo bar **/*.scss -then- :Fardo
Plug 'wakatime/vim-wakatime'                                                                 " time tracker
Plug '~/Repos/turtle.vim'                                                                    " quickly add header comments
Plug '~/Repos/twiggy.vim'                                                                    " twig variable automation
Plug 'AndrewRadev/switch.vim'                                                                " switch boolean values with gs
Plug 'vim-scripts/TaskList.vim'                                                              " tasks list: todo:, note:, fixme:
if has('nvim')
  Plug 'floobits/floobits-neovim', {'on': ['FlooJoinWorkspace']}                             " floobits - collaborative editing
endif
" }}}
" Syntax Engines {{{
Plug 'w0rp/ale'
" }}}
" Syntax support {{{
Plug 'othree/html5.vim'                                                                      " html5 syntax
Plug 'othree/javascript-libraries-syntax.vim'                                                " javascript libary syntax (jquery)
Plug 'pangloss/vim-javascript'                                                               " javascript syntax
Plug 'JulesWang/css.vim'                                                                     " css syntax
Plug 'cakebaker/scss-syntax.vim'                                                             " scss syntax
Plug 'lumiliet/vim-twig'                                                                     " twig syntax
Plug 'plasticboy/vim-markdown'                                                               " markdown syntax
Plug 'shime/vim-livedown'                                                                    " live markdown preview 'npm install -g livedown
Plug 'junegunn/vim-journal'                                                                  " syntax for plain text notes, similiar to markdown
" }}}
" Languages {{{
Plug 'fatih/vim-go'
" }}}
" NERDTree {{{
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }                     " visual file explorer
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }             " git changes for nerdtree
Plug 'ryanoasis/vim-devicons', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }                  " file icons for nerdtree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } " syntax highlighting for nerdtree
" }}}
" Auto Complete {{{
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }                              " Autocompletion engine
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'Shougo/context_filetype.vim'                                                           " Completion from other opened files
Plug 'zchee/deoplete-jedi', { 'do': ':UpdateRemotePlugins' }                                 " python completion source for deoplete via jedi
Plug 'davidhalter/jedi-vim',                                                                 " auto completion is disabled
Plug 'ervandew/supertab'                                                                     " Perform all your vim insert mode completions with Tab
" }}}
" Snippets {{{
Plug 'mattn/emmet-vim'                                                                       " html / templates
Plug 'sirver/ultisnips'                                                                      " snippet engine
Plug 'honza/vim-snippets'                                                                    " collection of snippets
" }}}


call plug#end()
