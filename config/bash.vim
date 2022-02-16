au BufNewFile,BufRead *.sh setlocal filetype=bash
         \ textwidth=79
         \ colorcolumn=80
         \ shiftwidth=4
         \ tabstop=4
         \ softtabstop=4
         \ expandtab

autocmd FileType sh inoremap <leader>b <esc>:w<cr><c-c> :!clear;sh %<CR>
autocmd FileType sh nnoremap <leader>b <esc>:w<cr><c-c> :!clear;sh %<CR>
autocmd FileType sh vnoremap <leader>b <esc>:w<cr><c-c> :!clear;sh %<CR>
