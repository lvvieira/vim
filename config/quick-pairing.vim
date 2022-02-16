"======================================================================
" QUICK PAIRING QUICK PAIRING QUICK PAIRING QUICK PAIRING QUICK PAIRING
"======================================================================

" INSERT TEXT (Apply pairing before text insertion)
inoremap <leader>' ''<esc>i
inoremap <leader>" ""<esc>i
inoremap <leader>( ()<esc>i
inoremap <leader>[ []<esc>i
inoremap <leader>{ {}<esc>i
inoremap <leader>< <><esc>i

cnoremap <leader>' ''<left>
cnoremap <leader>" ""<left>
cnoremap <leader>( ()<left>
cnoremap <leader>[ []<left>
cnoremap <leader>{ {}<left>
cnoremap <leader>< <><left>

function! Qp1()
   let ans = EndLine()

   if ans ==# 0

       execute "normal! i''"
       execute "normal! a"
       :startinsert

   elseif ans ==# 1

       execute "normal! a ''"
       execute "normal! a"
       :startinsert

   endif
endfunction
noremap <leader>' :call Qp1()<CR>
function! Qp2()
   let ans = EndLine()

   if ans ==# 0

       execute 'normal! i""'
       execute 'normal! a'
       :startinsert

   elseif ans ==# 1

       execute 'normal! a ""'
       execute 'normal! a'
       :startinsert

   endif
endfunction
noremap <leader>" :call Qp2()<CR>

" Apply to one word after its insertion
noremap <space>' mmwbcw''<Esc>P`m
noremap <space>" mmwbcw""<Esc>P`m
noremap <space>( mmwbcw()<Esc>P`m
noremap <space>[ mmwbcw[]<Esc>P`m
noremap <space>{ mmwbcw{}<Esc>P`m
noremap <space>< mmwbcw<><Esc>P`m

noremap <space>-' <Esc>mm0v$<left>:s/<c-r>=GetVisual()<cr>/'<c-r>=GetVisual()<cr>'/g<CR>`m
noremap <space>-" <Esc>mm0v$<left>:s/<c-r>=GetVisual()<cr>/"<c-r>=GetVisual()<cr>"/g<CR>`m
noremap <space>-( <Esc>mm0v$<left>:s/<c-r>=GetVisual()<cr>/(<c-r>=GetVisual()<cr>)/g<CR>`m
noremap <space>-[ <Esc>mm0v$<left>:s/<c-r>=GetVisual()<cr>/[<c-r>=GetVisual()<cr>]/g<CR>`m
noremap <space>-{ <Esc>mm0v$<left>:s/<c-r>=GetVisual()<cr>/{<c-r>=GetVisual()<cr>}/g<CR>`m
noremap <space>-< <Esc>mm0v$<left>:s/<c-r>=GetVisual()<cr>/<<c-r>=GetVisual()<cr>>/g<CR>`m

vnoremap <space>v' <Esc>mm:s/<c-r>=GetVisual()<cr>/'<c-r>=GetVisual()<cr>'/g<CR>`m
vnoremap <space>v" <Esc>mm:s/<c-r>=GetVisual()<cr>/"<c-r>=GetVisual()<cr>"/g<CR>`m
vnoremap <space>v( <Esc>mm:s/<c-r>=GetVisual()<cr>/(<c-r>=GetVisual()<cr>)/g<CR>`m
vnoremap <space>v[ <Esc>mm:s/<c-r>=GetVisual()<cr>/[<c-r>=GetVisual()<cr>]/g<CR>`m
vnoremap <space>v{ <Esc>mm:s/<c-r>=GetVisual()<cr>/{<c-r>=GetVisual()<cr>}/g<CR>`m
vnoremap <space>v< <Esc>mm:s/<c-r>=GetVisual()<cr>/<<c-r>=GetVisual()<cr>>/g<CR>`m

" DELETE BETWEEN, PAIRINGS AND INSERT
noremap d' :normal! F'lvf'h<CR>xi
noremap d" :normal! F"lvf"h<CR>xi
noremap d( :normal! F(lvf)h<CR>xi
noremap d[ :normal! F[lvf]h<CR>xi
noremap d{ :normal! F{lvf}h<CR>xi
noremap d< :normal! F<lvf>h<cr>xi

" QUICK PAIRING WORDS WITH COMMA BETWEEN THEM
function! QuickPairingList_1()

   let ans = StartWord()

   if ans ==# 0

      execute "normal! mmwbcw''"
      execute "normal! P`meelcl, "
      execute "normal! w"

   elseif ans ==# 1

      execute "normal! mmcw''"
      execute "normal! P`meelcl, "
      execute "normal! w"

   endif

endfunction
noremap <leader>l' :call QuickPairingList_1()<CR>

function! QuickPairingList_2()

   let ans = StartWord()

   if ans ==# 0

      execute 'normal! mmwbcw""'
      execute 'normal! P`meelcl, '
      execute 'normal! w'

   elseif ans ==# 1

      execute 'normal! mmcw""'
      execute 'normal! P`meelcl, '
      execute 'normal! w'

   endif

endfunction
noremap <leader>l" :call QuickPairingList_2()<CR>
