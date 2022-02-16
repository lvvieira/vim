" UNDO / REDO
noremap U <C-R>

" FIND PREVIOUS OCCURENCE OF A CHARACTER s<CHARACTER>
noremap <leader>f F

"============================================================
" REMOVE WHITE SPACES REMOVE WHITE SPACES REMOVE WHITE SPACES
"============================================================
noremap <leader>wsr :%s/\s\+$//e <CR>

"======================================
" REMOVES HIGHLIGHT OF YOUR LAST SEARCH
"======================================
noremap <silent> <leader><cr> :noh<cr>i<esc>

"=======================================
" " Remove trailing zeros (zeros before)
"=======================================
noremap <leader>zr :0,$ s/0\+\([0-9a-f]\)/\1/<CR>

"============================================================
" MARKS MARKS MARKS MARKS MARKS MARKS MARKS MARKS MARKS MARKS
"============================================================

" Delete all marks
noremap dm :delm A-Za-z0-9<cr>
noremap ´ `
noremap ´´ ``
