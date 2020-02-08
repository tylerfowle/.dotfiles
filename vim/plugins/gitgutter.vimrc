nnoremap <leader>ha :GitGutterStageHunk<CR>
nnoremap <leader>hu :GitGutterUndoHunk<CR>
nnoremap <leader>hv :GitGutterPreviewHunk<CR>

nnoremap ]h :<silent> GitGutterNextHunk<CR>
nnoremap [h :<silent> GitGutterPrevHunk<CR>

let g:gitgutter_max_signs=2000
