" colorscheme {{{

set background=dark

if has('termguicolors')
  set termguicolors " 24-bit terminal
endif

" set gruvbox as theme
colorscheme gruvbox

" set custom background color
if has('nvim')
  hi Normal guibg=g:tf_background
  hi SignColumn guibg=g:tf_background
  " hi CursorLine guibg=g:tf_background
  hi Folded guibg=g:tf_background
  " customize matching paren colors
  hi MatchParen guifg=#000000 guibg=#fc802d
endif

" limelight colors
let g:limelight_conceal_ctermfg = '#555555'
let g:limelight_conceal_guifg = '#555555'

" }}}


" markdown highlight syntax overrides {{{

hi! link htmlH1 GruvboxGreenBold
hi! link htmlH2 GruvboxPurpleBold
hi! link htmlH3 GruvboxAquaBold
hi! link htmlH4 GruvboxYellowBold
hi! link htmlH5 GruvboxOrangeBold
hi! link htmlH6 GruvboxRedBold

" }}}

" custom markdown highlighting
au FileType markdown :silent! call matchadd('GruvboxGreenBold', 'DONE')
au FileType markdown :silent! call matchadd('GruvboxYellowBold', 'TODO')

" Abbreviations {{{

abbr marign margin
abbr widht width
abbr iamges images
abbr iamge image
abbr sectoin section
abbr accordian accordion

" }}}


