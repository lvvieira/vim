"============================================
" NAVEGATION NAVEGATION NAVEGATION NAVEGATION
"============================================

" Move up | i
noremap i k

" Move down | k
noremap k j

" Move right | l
noremap l l

" Move left | j
noremap j h

" Move one word to the right | L (End)
noremap L e

" Move one word to the right | ç (Beginning)
noremap ç w
noremap gl w

" Move one word to the left | J (End)
noremap J ge

" Move one word to the left | h (Beginning)
noremap h b
noremap gj b

" Move to the begining of line | H
noremap H 0

" Move to the end of a line | Ç
noremap Ç $

" Move to previous paragraph | I
noremap I {

" Move to the next paragraph | K
noremap K }

" Page Up \ Page Down
call NVmodes('gi', '<C-U>')
call NVmodes('gk', '<C-D>')

" Moving keys in insert mode
" inoremap <C-I> <Up>
inoremap <C-K> <Down>
inoremap <C-L> <Right>
inoremap <C-J> <Left>

" Moving keys in command mode
cnoremap <C-I> <Up>
cnoremap <C-K> <Down>
cnoremap <C-L> <Right>
cnoremap <C-J> <Left>

" Top / middle / bottom of page
noremap gy H
noremap gh M
noremap gn L

" Top / middle / bottom of file
noremap gt gg
noremap <expr> gg (line('$')/2).'G'
noremap gb G
