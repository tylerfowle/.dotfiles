" ##############################################################################
" Autocommands
" ##############################################################################

" auto enter insert mode when entering a term buffer
autocmd BufEnter * if &buftype == 'terminal' | :startinsert | endif

" make comments italic
autocmd ColorScheme * highlight Comment gui=italic

" change vert split color to same as iterm2
" the use of autocmd guarantees that it will override color scheme
autocmd ColorScheme * hi VertSplit cterm=NONE guifg=#686868

" install ruby after saving
autocmd BufWritePost *.rb silent! !bundle exec rake install

" auto reload file when changed on disk
set updatetime=750
au CursorHold,FocusGained,BufEnter * checktime

" go commands
augroup goWatcher
  au!
  au BufWritePre *.go :GoImports
  au BufWritePre *.go silent! :GoBuild
  au BufWritePre *.go silent! :!go build
augroup END
