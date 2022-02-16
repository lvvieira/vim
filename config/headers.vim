"==========================
" MARKDOWN SECTION HEADINGS
"==========================

nnoremap <leader>h1 m`yypVr=``
nnoremap <leader>h2 m`yypVr-``
nnoremap <leader>h3 m`^i### <esc>``4l
nnoremap <leader>h4 m`^i#### <esc>``5l
nnoremap <leader>h5 m`^i##### <esc>``6l

"================
" SECTION HEADERS
"================

function! PutIqualSign()
   normal! o
   normal! <c-c>
   normal! kO
   normal! <c-c>
   normal! jVyjVpVr=VykkVp
endfunction
function! Header()
   if &filetype ==# 'vim'
      :s/^/" /
      :call PutIqualSign()
      execute 'normal! r"2jr"k'
   elseif &filetype ==# 'python' || &filetype ==# 'sh' || &filetype ==# 'zsh'
      :s/^/# /
      :call PutIqualSign()
      execute 'normal! r#2jr#k'
   elseif &filetype ==# 'xdefaults'
      :s/^/! /
      :call PutIqualSign()
      execute 'normal! r!2jr!k'
   elseif &filetype ==# 'tex' || &filetype ==# 'latex'
      :s/^/% /
      :call PutIqualSign()
      execute 'normal! r%2jr%k'
   endif
endfunction
noremap <leader>hh :call Header()<CR>

