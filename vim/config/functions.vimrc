" ##############################################################################
" Functions
" ##############################################################################

" prettydiff current file
command! PrettyDiff call PrettyDiffer()
function! PrettyDiffer()
  silent :!prettydiff %
endfunction

" open current buffer in chrome
command! -nargs=? Chrome call Chromer(<f-args>)
function! Chromer(...)
  if a:0 < 1
    silent :!open % -a Google\ Chrome
  else
    silent :exec  '!open /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --app=' . a:1
  endif
endfunction
