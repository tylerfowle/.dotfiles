" ##############################################################################
" vim-partial
" https://github.com/jbgutierrez/vim-partial
" ##############################################################################

let g:partial_templates_roots = [
      \ 'build',
      \ 'scss',
      \ 'build/scss',
      \ 'build/js',
      \ 'src/scss',
      \ 'src/js',
      \ 'app/assets/*'
      \ ]

let g:partial_templates = {
       \   'js': 'import %s;',
       \}

vnoremap <localleader>x :PartialExtract<cr>
nnoremap <localleader>x :PartialDispose<cr>
