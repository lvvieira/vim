"============
" STATUS LINE
"============

"hi User1     ctermbg=grey     ctermfg=black     guibg=#96CBFE   guifg=#96CBFE
"hi User2     ctermbg=grey     ctermfg=grey     guibg=#111111   guifg=#FF6C60
"hi User3     ctermbg=grey     ctermfg=black     guibg=#111111   guifg=#A8FF60

function! SyntaxItem()
   return synIDattr(synID(line("."),col("."),1),"name")
endfunction

set statusline+=%{SyntaxItem()}
if has('statusline')
   set statusline=%1*
   set statusline+=\ \%F\ \|
   set statusline+=\ \%{strftime('%T')}\ \|
   set statusline+=\ \%{strftime('%d\ %b\ %y')}
   set statusline+=%2*
"    set statusline+=\ \ \ \ \ \ \ \ \
   set statusline+=%=                                    " Align right
   set statusline+=%3*
   set statusline+=\ TYPE=%{strlen(&ft)?&ft:'none'}\ \|
   set statusline+=\ ENC=%{(&fenc==\"\"?&enc:&fenc)}\ \|
   set statusline+=\ %{&fileformat}\ \|
   set statusline+=\ LANG=%{&spelllang}\ \|
   set statusline+=\ %(%l,%c%)\ 
   "    set statusline+=\ %{syntaxitem()}\ \|
endif
