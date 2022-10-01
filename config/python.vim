au BufNewFile,BufRead *.py setlocal filetype=python
         \ textwidth=79
         \ colorcolumn=80
         \ shiftwidth=4
         \ tabstop=4
         \ softtabstop=4
         \ expandtab

autocmd FileType python inoremap <leader>r <esc>:w<cr><c-c> :!clear;python %<CR>
autocmd FileType python nnoremap <leader>r <esc>:w<cr><c-c> :!clear;python %<CR>
autocmd FileType python vnoremap <leader>r <esc>:w<cr><c-c> :!clear;python %<CR>









au BufNewFile,BufRead *.r setlocal filetype=r
         \ textwidth=79
         \ colorcolumn=80
         \ shiftwidth=4
         \ tabstop=4
         \ softtabstop=4
         \ expandtab

autocmd FileType r inoremap <leader>r <esc>:w<cr><c-c> :!clear;Rscript %<CR>
autocmd FileType r nnoremap <leader>r <esc>:w<cr><c-c> :!clear;Rscript %<CR>
autocmd FileType r vnoremap <leader>r <esc>:w<cr><c-c> :!clear;Rscript %<CR>
