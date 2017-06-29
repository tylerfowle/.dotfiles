let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 term://.//9129:/usr/local/bin/zsh
badd +0 term://.//9167:/usr/local/bin/zsh
argglobal
silent! argdel *
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 89 + 90) / 180)
exe '2resize ' . ((&lines * 51 + 53) / 106)
exe 'vert 2resize ' . ((&columns * 90 + 90) / 180)
exe '3resize ' . ((&lines * 52 + 53) / 106)
exe 'vert 3resize ' . ((&columns * 90 + 90) / 180)
argglobal
enew
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
wincmd w
argglobal
edit term://.//9167:/usr/local/bin/zsh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 2 - ((1 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 024|
wincmd w
argglobal
edit term://.//9129:/usr/local/bin/zsh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 2 - ((1 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 024|
wincmd w
exe 'vert 1resize ' . ((&columns * 89 + 90) / 180)
exe '2resize ' . ((&lines * 51 + 53) / 106)
exe 'vert 2resize ' . ((&columns * 90 + 90) / 180)
exe '3resize ' . ((&lines * 52 + 53) / 106)
exe 'vert 3resize ' . ((&columns * 90 + 90) / 180)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOs
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
