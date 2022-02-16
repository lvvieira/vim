"=======================================================================
" COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY
" COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY
" COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY
" COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY
" COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY
" COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY
" COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY
" COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY
" COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY
" COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY COPY
"=======================================================================

" Copy selected text
noremap yy "+y

" Copy word under cursor (excluding surrounding whitespace)
noremap yw yiw"+y<esc>

" Copy to the right
noremap yl y$

" Copy to the left
noremap yj y0

" Copy line under cursor
noremap Y mm0v$h"+y`m

" Copy the entire text
noremap y; ggVG"+y<c-o><c-o>

" Copy inside ''
noremap y' yi'

" Copy inside ""
noremap y" yi"

" Copy inside ()
noremap y( yi(

" Copy inside []
noremap y[ yi[

" Copy inside {}
noremap y{ yi{

" Copy inside <>
noremap y< yi<

" Copy url on + register
function! CopyUrl()
   let s:url = matchstr(getline("."), '[a-z]*:\/\/[^ >,;,"]*')
   echo s:url
   set clipboard&
   call setreg('+', s:url)
endfunction
noremap yu :call CopyUrl()<CR>

" Cut
noremap cc "+dd<esc>

