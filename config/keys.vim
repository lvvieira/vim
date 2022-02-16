"===============================
" DISABLE DEFAULT KEYS SHORTCUTS
"===============================

for key in [
         \ 'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p',
         \ 'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l',
         \ 'z', 'x', 'c', 'v', 'b', 'n', 'm',
         \
         \ 'Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P',
         \ 'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L',
         \ 'Z', 'X', 'C', 'V', 'B', 'N', 'M',
         \
         \ '<F1>', '<F3>', '<F4>',
         \ '<F5>', '<F6>', '<F7>', '<F8>',
         \ '<F9>', '<F10>', '<F11>', '<F12>',
         \
         \ '<Up>', '<Down>', '<Left>', '<Right>',
         \ ]

   for map_command in ['vnoremap', 'nnoremap']
      execute map_command . ' <silent> ' . key . ' <Nop>'
   endfor

endfor

for key in [
         \ '<F1>', '<F3>', '<F4>',
         \ '<F5>', '<F6>', '<F7>', '<F8>',
         \ '<F9>', '<F10>', '<F11>', '<F12>',
         \
         \ ]

   for map_command in ['inoremap']
      execute map_command . ' <silent> ' . key . ' <Nop>'
   endfor

endfor
inoremap <Up> <Nop>

"===========================================
" ENABLE ONLY REQUIRED DEFAULT KEY SHORTCUTS
"===========================================

noremap <F1> :source $MYVIMRC<CR>
noremap <F3> :tabe $MYVIMRC<CR>
noremap <F4> :tabe $VIMHOME<CR>

"call NVmodes('q', 'q')
"call NVmodes('w', 'w')
"call NVmodes('e', 'e')
" call NVmodes('r', 'r')
"call NVmodes('t', 't')
"call NVmodes('y', 'y')
call NVmodes('u', 'u')
"call NVmodes('i', 'i')
call NVmodes('o', 'o')
"call NVmodes('p', 'p')
"call NVmodes('a', 'a')
"call NVmodes('s', 's')
"call NVmodes('d', 'd')
call NVmodes('f', 'f')
"call NVmodes('g', 'g')
call NVmodes('gU', 'gU')
call NVmodes('gu', 'gu')
"call NVmodes('h', 'h')
"call NVmodes('j', 'j')
"call NVmodes('k', 'k')
"call NVmodes('l', 'l')
call NVmodes('z', 'z')
call NVmodes('x', 'x')
"call NVmodes('c', 'c')
" call NVmodes('v', 'v')
"call NVmodes('b', 'b')
call NVmodes('n', 'n')
call NVmodes('m', 'm')
"call NVmodes('Q', 'Q')
"call NVmodes('W', 'W')
"call NVmodes('E', 'E')
call NVmodes('R', 'R')
"call NVmodes('T', 'T')
"call NVmodes('Y', 'Y')
"call NVmodes('U', 'U')
"call NVmodes('I', 'I')
call NVmodes('O', 'O')
"call NVmodes('P', 'P')
"call NVmodes('A', 'A')
"call NVmodes('S', 'S')
"call NVmodes('D', 'D')
call NVmodes('F', 'F')
"call NVmodes('G', 'G')
"call NVmodes('H', 'H')
"call NVmodes('J', 'J')
"call NVmodes('K', 'K')
"call NVmodes('L', 'L')
call NVmodes('Z', 'Z')
call NVmodes('ZQ', '<Esc>:q<CR>')
call NVmodes('ZZ', '<Esc>:q<CR>')
"call NVmodes('X', 'X')
"call NVmodes('C', 'C')
call NVmodes('V', 'V')
"call NVmodes('B', 'B')
call NVmodes('N', 'N')
"call NVmodes('M', 'M')
