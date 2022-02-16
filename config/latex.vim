"==================================================================
" LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX
" LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX
" LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX
" LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX
" LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX
" LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX
" LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX
" LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX
" LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX
" LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX
" LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX LATEX
"==================================================================

" spell check
au BufNewFile,BufRead *.tex,*.latex setlocal spell spelllang=pt,en

"adds comments
autocmd FileType tex,latex ino <leader>1 <esc>0i%<esc>j
autocmd FileType tex,latex nno <leader>1 0i%<esc>j
autocmd FileType tex,latex vno <leader>1 :s/^/%/<cr>

"removes comments
autocmd FileType tex,latex ino <leader>2 <esc>0<del>
autocmd FileType tex,latex nno <leader>2 <esc>0<del>
autocmd FileType tex,latex vno <leader>2 :s/^%/<cr>

autocmd FileType tex,latex ino <leader>xe <esc>:w<cr> :!clear; xelatex %<CR>
autocmd FileType tex,latex ino <leader>l <esc>:w<cr> :!clear<cr>:!pdflatex %<CR>
autocmd FileType tex,latex nno <leader>l <esc>:w<cr> :!clear; pdflatex %<CR>
autocmd FileType tex,latex ino <leader>b <esc>:w<cr> :!clear; biber %:t:r <CR>
autocmd FileType tex,latex ino <leader>pdf <esc>:w<cr> :!clear; evince %:t:r.pdf &<CR>
autocmd FileType tex,latex nno <leader>pdf <esc>:w<cr> :!clear; evince %:t:r.pdf &<CR>
autocmd FileType tex,latex inoremap ,dc \documentclass{}<Esc>T{i
autocmd FileType tex,latex inoremap ,ct \cite{}<Esc>T{i
autocmd FileType tex,latex inoremap ,ct \enumerate{}<Esc>T{i

"nnoremap wp :call search('\<' . nr2char(getchar()), 'W', line('.'))<cr>

