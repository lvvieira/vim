"========================================================================
" PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE
" PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE
" PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE
" PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE
" PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE
" PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE
" PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE
" PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE
" PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE
" PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE PASTE
"========================================================================

" Paste after cursor
noremap pl "+p
noremap pk "+p

" Paste before cursor
noremap pi "+P
noremap pj "+P
noremap pp "+P

" Paste after cursor in Visual mode
vnoremap pl "_dp
vnoremap pk "_dp

" Paste before cursor in Visual mode
vnoremap pj "_dP
vnoremap pi "_dP
vnoremap pp "_dP

function! PasteAtEnd()

   let ans = EndWord()

   " Save the current register and clipboard
   let reg_save = getreg('+')
   let regtype_save = getregtype('+')
   let cb_save = &clipboard
   set clipboard&

   " Adds spsace at the begining of the word from + register
   let reg_modified = substitute(reg_save, "^", " ", "")

   " Puts the word back to register
   call setreg('+', reg_modified, regtype_save)
   let &clipboard = cb_save

   " If cursor is not at the last caracter
   if ans ==# 0
      execute 'normal! emm"+p`mw'

      " If cursor is at the last caracter
   elseif ans ==# 1
      execute 'normal! mm"+p`mw'

   endif

   " Puts the word original word back to + register
   call setreg('+', reg_save, regtype_save)

endfunction

function! PasteAtBeginning()

   let ans = StartWord()

   " Save the current register and clipboard
   let reg_save = getreg('+')
   let regtype_save = getregtype('+')
   let cb_save = &clipboard
   set clipboard&

   " Adds spsace at the begining of the word from + register
   let reg_modified = substitute(reg_save, "^", " ", "")

   " Puts the word back to register
   call setreg('+', reg_modified, regtype_save)
   let &clipboard = cb_save

   " If cursor is not at the first caracter
   if ans ==# 0

      execute 'normal! gemm"+p`mw'

      " If cursor is at the last caracter
   elseif ans ==# 1

      execute 'normal! gemm"+p`mw'

   endif

   " Puts the word original word back to + register
   call setreg('+', reg_save, regtype_save)

endfunction

" Paste at the begininng of the current word
noremap pwj :call PasteAtBeginning()<CR>

" Paste at the end of the current word
noremap pwl :call PasteAtEnd()<CR>

"===========================
" TRADITIONAL COPY AND PASTE
"===========================

" COPY by pressing Crtl + c after selection
vnoremap <C-c> "+y

" PASTE by pressing Crtl + v in insert mode
inoremap <C-v> <F2><C-r>+<F2>

