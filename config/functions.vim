"=====================================================================
"FUNCTIONS FUNCTIONS FUNCTIONS FUNCTIONS FUNCTIONS FUNCTIONS FUNCTIONS
"=====================================================================

" Source files stored in the $VIMCONFIG directory
function! AddFile(file)
   let file = a:file
   let file = substitute(file, "^", "~/.vim/config/", "")
   let file = substitute(file, "$", ".vim", "")
    if filereadable(expand(file))
       :execute 'source ' . file
    endif
endfunction

" Normal, Visual and Insert modes
function! NVICmodes(keys, rhs)
   execute 'nnoremap' a:keys a:rhs
   execute 'vnoremap' a:keys a:rhs
   execute 'inoremap' a:keys a:rhs
   execute 'cnoremap' a:keys a:rhs
endfunction

" Normal, Visual and Insert modes
function! NVImodes(keys, rhs)
   execute 'nnoremap' a:keys a:rhs
   execute 'vnoremap' a:keys a:rhs
   execute 'inoremap' a:keys a:rhs
endfunction

" Normal and Visual modes
function! NVmodes(keys, rhs)
   execute 'nnoremap' a:keys a:rhs
   execute 'vnoremap' a:keys a:rhs
endfunction

" Insert and Command modes
function! ICmodes(keys, rhs)
   execute 'inoremap' a:keys a:rhs
   execute 'cnoremap' a:keys a:rhs
endfunction

" Is the cursor at the end of the line?
function! EndLine() abort
   let pos = getpos('.')
   let current = col(".")
   let endline = col("$") - 1
   if current ==? endline
      echom "true"
      return v:true
   else
      call setpos('.', pos)
      echom "false"
      return v:false
   endif
endfunction

" Is the cursor at the end of current word?
function! EndWord() abort
   let pos = getpos('.')
   normal! gee
   if pos == getpos('.')
      return v:true
   else
      call setpos('.', pos)
      return v:false
   endif
endfunction

" Is the cursor at the beginning of current word?
function! StartWord() abort
   let cursor_position = getpos(".")
   let pos = getpos('.')
   normal! gew
   if pos == getpos('.')
      return v:true
   else
      call setpos('.', pos)
      return v:false
   endif
   call setpos('.', cursor_position)
endfunction

function! EscapeString (string)
   let string=a:string
   " Escape regex characters
   let string = escape(string, '^$.*\/~[]')
   " Escape the line endings
   let string = substitute(string, '\n', '\\n', 'g')
   return string
endfunction

function! GetVisual() range
   " Save the current register and clipboard
   let reg_save = getreg('"')
   let regtype_save = getregtype('"')
   let cb_save = &clipboard
   set clipboard&

   " Put the current visual selection in the " register
   normal! ""gvy
   let selection = getreg('"')

   " Put the saved registers and clipboards back
   call setreg('"', reg_save, regtype_save)
   let &clipboard = cb_save

   "Escape any special characters in the selection
   let escaped_selection = EscapeString(selection)

   return escaped_selection
endfunction

function! TextWidth(column)
   let column_number = a:column + 1
   let column_text = a:column
   :execute 'set colorcolumn=' . column_number
   :execute 'set textwidth=' . column_text
endfunction
for column in range(1, 120)
   execute 'noremap <silent> <leader>tw' . column . ' :call TextWidth(' . column . ')<cr>'
endfor

function! ColorColumn(column)
   let column_number = a:column
   let column_text = a:column - 1
   :execute 'set colorcolumn=' . column_number
   :execute 'set textwidth=' . column_text
endfunction
for column in range(1, 120)
   execute 'noremap <silent> <leader>cc' . column . ' :call ColorColumn(' . column . ')<cr>'
endfor
noremap <silent> <space>c0 :set colorcolumn=<cr>


