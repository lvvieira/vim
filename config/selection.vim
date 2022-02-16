"============================================================
" SELECTION SELECTION SELECTION SELECTION SELECTION SELECTION
"============================================================

" Select a caracter \ start selecting
noremap vv v

" Block selection
noremap vb <C-V>

" SELECT a word (same as wv)
noremap vw viw

" SELECT a line (special case with no spaces at the ends)
noremap vV 0v$<left>

" SELECT paragraph
noremap vp {jV}k

" SELECT to the right of cursor
noremap vl v$h

" SELECT to the left of cursor
noremap vj v0

" SELECT whole text
noremap v; ggVG

" SELECT between <>
noremap v< :normal! F<lvf>h<cr>

" SELECT between ''
noremap v' :normal! F'lvf'h<CR>

" SELECT between ""
noremap v" :normal! F"lvf"h<CR>

" SELECT between ()
noremap v( :normal! F(lvf)h<CR>

" SELECT between []
noremap v[ :normal! F[lvf]h<CR>

" SELECT between {}
noremap v{ :normal! F{lvf}h<CR>

