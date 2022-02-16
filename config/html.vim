"======================================================================
" HTML HTML HTML HTML HTML HTML HTML HTML HTML HTML HTML HTML HTML HTML
"======================================================================

" Select text between tags
nno vit vit

highlight link htmlTag htmlTagName
highlight link htmlEndTag htmlTagName

au BufNewFile *.html 0r ~/.vim/skel/html.skel | let IndentStyle = "html"
au BufNewFile,BufRead *.html setlocal filetype=html
         \ shiftwidth=6
         \ tabstop=6
         \ softtabstop=6

autocmd FileType html ino <leader>ht <esc>:w<cr> :!clear; firefox %:p &<CR>
autocmd FileType html nno <leader>ht <esc>:w<cr> :!clear; firefox %:p &<CR>

