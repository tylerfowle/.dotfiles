" General Shortcuts

" make Y function like C and D
" Y(ank) not linewise
map Y y$

" search for visual selection
vnoremap // y/<C-R>"<CR>

" remap emmet expand
imap hh <C-y>,

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" scroll the viewport faster
nnoremap <C-e> 4<C-e>
nnoremap <C-y> 4<C-y>

" B and E for faster beginning and end
nnoremap B ^
nnoremap E $

" swap directions of { and } to match up with j and k
" this is specific to my keyboard layout
nnoremap { }
nnoremap } {

" copy to clipboard
noremap YY "+y<CR>

" insert line below
nnoremap <CR> o<Esc>

" redraw vim
nnoremap <C-z> :redraw!<CR>

" use tab for indenting in visual mode
vnoremap <Tab> >gv|
vnoremap <S-Tab> <gv

" open github issues with issues # under cursor
nnoremap gh :!open -a "/Applications/Google Chrome.app" 'https://github.com/firespring/fdp_cdn/issues/'<cword><CR>

" COC maps
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
