" ##############################################################################
" Functions
" ##############################################################################

" prettydiff current file
command! PrettyDiff call PrettyDiffer()
function! PrettyDiffer()
  silent :!gprettydiff %
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


" execute the current file in python2 via neovim :term
command! ExecPython call ExecPython()
function! ExecPython()
  :normal! mA
  :only
  :silent! %bd!
  :silent! e#
  :below vsp
  :term python2 %
  wincmd p
  :normal! `A
endfunction
