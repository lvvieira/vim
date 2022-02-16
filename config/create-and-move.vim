"==============================================
" MOVING CARACTERS, WORDS, LINES AND PARAGRAPHS
"==============================================

" Swap current with caracter next one 
nnoremap <silent> cl xp

" Swap current with caracter previous one
nnoremap <silent> cj Xph

" Swap current word with previous
nnoremap <silent> wj "_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>:nohlsearch<CR>

" Swap current word with next
nnoremap <silent> wl "_yiw:s/\(\%#\w\+\)\(\W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>:nohlsearch<CR>

" Move current word to the right | wj
nnoremap <silent> bwj "_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>:nohlsearch<CR>

" Move current word to the left | wl
nnoremap <silent> bwl "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o>/\w\+\_W\+<CR><c-l>:nohlsearch<CR>

" Move lines up, down, left and right
nnoremap <silent> bi :move-2<cr>
nnoremap <silent> bk :move+<cr>
nnoremap <silent> bj <<
nnoremap <silent> bl >>

xnoremap <silent> bi :move-2<cr>gv
xnoremap <silent> bk :move'>+<cr>gv
xnoremap <silent> bj <gv
xnoremap <silent> bl >gv
xnoremap bj <gv
xnoremap bl >gv

" Join current line with the one bellow
noremap <leader>jl J

" Join visually selected lines
vnoremap <leader>jl J

" Turn a line with N words into N lines
noremap <leader>lj <Esc>V:s/\s\+/\r/g<CR>:nohl<CR>

"=============================================
" CREATE A NEW LINE ABOVE AND BELOW THE CURSOR
"=============================================
noremap ck :set paste<CR>m`o<Esc>``:set nopaste<CR>
noremap ci :set paste<CR>m`O<Esc>``:set nopaste<CR>

