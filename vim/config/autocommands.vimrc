" ##############################################################################
" Autocommands
" ##############################################################################

" install ruby after saving
autocmd BufWritePost *.rb silent! !bundle exec rake install

" Python
autocmd FileType python set cursorcolumn

" python formatting
augroup python
  au!
  au BufNewFile,BufRead silent! *.py
  setlocal tabstop=4
  setlocal softtabstop=4
  setlocal shiftwidth=4
  setlocal textwidth=79
  setlocal expandtab
  setlocal autoindent
  setlocal fileformat=unix
augroup END

" auto reload file when changed on disk
set updatetime=750
au CursorHold,FocusGained,BufEnter * checktime

" set the foldmethod to syntax for css and scss files
au FileType css,scss setlocal foldmethod=syntax

" go commands
augroup goWatcher
  au!
  au BufWritePre *.go :GoImports
  au BufWritePre *.go silent! :GoBuild
  au BufWritePre *.go silent! :!go build
augroup END
