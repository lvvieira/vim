"=======================================
" SAVE, EXIT, SAVE AND EXIT, NORMAL MODE
" SAVE, EXIT, SAVE AND EXIT, NORMAL MODE
" SAVE, EXIT, SAVE AND EXIT, NORMAL MODE
" SAVE, EXIT, SAVE AND EXIT, NORMAL MODE
" SAVE, EXIT, SAVE AND EXIT, NORMAL MODE
" SAVE, EXIT, SAVE AND EXIT, NORMAL MODE
" SAVE, EXIT, SAVE AND EXIT, NORMAL MODE
" SAVE, EXIT, SAVE AND EXIT, NORMAL MODE
" SAVE, EXIT, SAVE AND EXIT, NORMAL MODE
" SAVE, EXIT, SAVE AND EXIT, NORMAL MODE
"=======================================

" SAVE
call NVImodes('<leader>w', '<Esc>:w<CR>')
call NVImodes('<leader>m', '<Esc>:w<CR>')

" SAVE and QUIT
call NVImodes('<leader>qw', '<Esc>:wq<CR>')

" Accessing Normal mode
call NVmodes('<leader>,', '<Esc>')
inoremap <leader>, <Esc>`^
"inoremap <Esc> <Esc>`^


" Quit only
noremap <leader>q' ZQ
