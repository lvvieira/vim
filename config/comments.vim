"========================================================================
" COMMENTS COMMENTS COMMENTS COMMENTS COMMENTS COMMENTS COMMENTS COMMENTS
"========================================================================

" COMMENT A LINE
noremap <leader>c' :s/^/'/ <cr>j
noremap <leader>c" :s/^/"/ <cr>j
noremap <leader>c1 :s/^/!/ <cr>j
noremap <leader>c2 :s/^/@/ <cr>j
noremap <leader>c3 :s/^/#/ <cr>j
noremap <leader>c4 :s/^/$/ <cr>j
noremap <leader>c5 :s/^/%/ <cr>j
noremap <leader>c7 :s/^/&/ <cr>j
noremap <leader>c8 :s/^/*/ <cr>j
noremap <leader>c; :s/^/;/ <cr>j

" COMMENT CURRENT LINE IN NORMAL MODE
function! CommentLine()

   if &filetype ==# 'vim'
      :s/^/"/
   elseif &filetype ==# 'zsh' || &filetype ==# 'sh'|| &filetype ==# 'python'
      :s/^/#/
   elseif &filetype ==# 'xdefaults'
      :s/^/!/
   elseif &filetype ==# 'tex' || &filetype ==# 'latex'
      :s/^/%/
   endif

endfunction
noremap <leader>cl :call CommentLine()<CR>j
noremap <leader>cx 0xj

" COMMENT SELECTED LINES
function! CommentMultiplesLines() range

   execute ':' . a:firstline
   execute "normal! \<C-v>"
   execute ':' . a:lastline

   if &filetype ==# 'vim'
      execute 'normal! I"'

   elseif &filetype ==# 'zsh' || &filetype ==# 'sh'|| &filetype ==# 'python'
      execute 'normal! I#'

   elseif &filetype ==# 'xdefaults'
      execute 'normal! I!'

   elseif &filetype ==# 'tex' || &filetype ==# 'latex'
      execute 'normal! I%'

   elseif &filetype ==# 'html'
      execute ':' . a:firstline
         :s/^/<!--/
      execute ':' . a:lastline
         :s/$/-->/

   endif

endfunction
vnoremap <silent> <leader>cl :call CommentMultiplesLines()<cr>

" REMOVE COMMENT SELECTED LINES
function! RemoveCommentMultiplesLines() range

"   let cursor_position = getpos(".")

   if &filetype ==# 'html'

      execute ':' . a:firstline
      execute ':s/<!--//'
      execute ':' . a:lastline
      execute ':s/-->//'

   else

      execute ':' . a:firstline
      execute "normal! \<C-v>"
      execute ':' . a:lastline
      execute 'normal! x'

   endif

"   call setpos('.', cursor_position)

endfunction
vnoremap <silent> <leader>rc :call RemoveCommentMultiplesLines()<cr>
