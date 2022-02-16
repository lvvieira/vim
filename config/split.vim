"============================================================
" SPLIT SPLIT SPLIT SPLIT SPLIT SPLIT SPLIT SPLIT SPLIT SPLIT
"============================================================

" CREATE SPLITS
call NVmodes('sv', ':vnew<CR>')
call NVmodes('sh', ':new<CR>')

" OPEN CURRENT WINDOW IN A SPLIT
call NVmodes('stv', '<c-w>v')
call NVmodes('sth', '<c-w>s')

" MOVING TO DIFFERENT SPLIT
noremap si <C-W>k
noremap sk <C-W>j
noremap sj <C-W>h
noremap sl <C-W>l

vnoremap si <C-W>k
vnoremap sk <C-W>j
vnoremap sj <C-W>h
vnoremap sl <C-W>l

"" Close all other splits
call NVmodes('<space>s0', '<c-w>o')

" Change window sizes in split mode
"noremap s+ 1<C-w>+
"noremap s- 1<C-w>-
"noremap <c-s>< 1<C-w><
"noremap <c-s>> 1<C-w>>
"noremap s= <C-w>=

