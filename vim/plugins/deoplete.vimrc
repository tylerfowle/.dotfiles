" ##############################################################################
" Deoplete
" https://github.com/Shougo/deoplete.nvim
" ##############################################################################

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1

" complete with words from any opened file
let g:context_filetype#same_filetypes = {}
let g:context_filetype#same_filetypes._ = '_'

" make deoplete with with ultisnips
call deoplete#custom#source('ultisnips', 'matchers', ['matcher_fuzzy'])
