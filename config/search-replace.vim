"===================
" SEARCH AND REPLACE
"===================

" Search a word in the current file
noremap <expr> <leader>fw '/' . EscapeString(input("Word: ")) . '\c/<CR>'

" Search a word across project/folder files
noremap <expr> <leader>fW ':vimgrep /' . EscapeString(input("Word: ")) . '/ **/*<CR>'

" Jump among searched words project across/folder files
noremap cj :cp<CR>
noremap cl :cn<CR>

" Replace a caracter
noremap rr r

" Replace selected text
vnoremap <expr> rv 'mm:s/<C-R>=GetVisual()<CR>/' . EscapeString(input("Replace a Selection: ")) . '/g<CR>`m'
vnoremap <expr> vr 'mm:s/<C-R>=GetVisual()<CR>/' . EscapeString(input("Replace a Selection: ")) . '/g<CR>`m'

" Replace select text across the entire file
vnoremap <expr> r; ':s%/<c-r>=GetVisual()<cr>/' . EscapeString(input("Replace Selection Across the Entire text: ")) . '/g<CR>'

" Replace between <>
noremap <expr> r< ':normal! F<lvf>h<CR>:s/<C-R>=GetVisual()<CR>/' . EscapeString(input("Replace between < >: ")) . '/g<CR>'

" Replace between ''
noremap <expr> r' ':normal! F'lvf'h<CR>:s/<C-R>=GetVisual()<CR>/' . EscapeString(input("Replace between ' ': ")) . '/g<CR>'

" Replace between ""
noremap <expr> r" ':normal! F"lvf"h<CR>:s/<C-R>=GetVisual()<CR>/' . EscapeString(input("Replace between " ": ")) . '/g<CR>'

" Replace between ()
noremap <expr> r( ':normal! F(lvf)h<CR>:s/<C-R>=GetVisual()<CR>/' . EscapeString(input("Replace between ( ): ")) . '/g<CR>'

" Replace between []
noremap <expr> r[ ':normal! F[lvf]h<CR>:s/<C-R>=GetVisual()<CR>/' . EscapeString(input("Replace between [ ]: ")) . '/g<CR>'

" Replace between {}
noremap <expr> r{ ':normal! F{lvf}h<CR>:s/<C-R>=GetVisual()<CR>/' . EscapeString(input("Replace between { }: ")) . '/g<CR>'

" Remove trailing zeros (zeros before)
noremap <leader>zr :0,$ s/0\+\([0-9a-f]\)/\1/<CR>

" Replace N characters at the beginning of visually selected lines
function! ReplaceStart() range

   let first = a:firstline
   let last = a:lastline
   execute ': ' . first . ',' . last . 's/^.\{' . input("Number of Caracters to Replace at the Beginning: ") . '}/' . EscapeString(input("What to replace for?")) . '/g'

endfunction
vnoremap <silent> <leader>rj :call ReplaceStart()<CR>

" Replace N characters at the end of visually selected lines
function! ReplaceEnd() range

   let first = a:firstline
   let last = a:lastline
   execute ': ' . first . ',' . last . 's/.\{' . input("Number of Caracters to Replace at the End: ") . '}$/' . EscapeString(input("What to replace for?")) . '/g'

endfunction
vnoremap <silent> <leader>rl :call ReplaceEnd()<CR>
