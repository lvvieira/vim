"==================
" VIM CONFIGURATION
"==================

autocmd bufwritepost,filewritepost .vimrc source $MYVIMRC
autocmd! VimEnter * :SetColor all

if has('win32') || has ('win64')

   let $VIMHOME = $VIM."/vimfiles"

else

   let $VIMHOME = $HOME."/.vim"

endif

let $RC = $VIMHOME."/vimrc"
let $VIMCONFIG = $VIMHOME."/config"

let mapleader= ","
"========================
" SOURCING EXTERNAL FILES
"========================
" Following files should be located at $VIMCONFIG

source $VIMCONFIG/functions.vim
for file in [
               \ "keys",
               \ "settings",
               \ "plugin-manager",
               \ "colors",
               \ "statusline",
               \ "navegation",
               \ "insertion",
               \ "copy",
               \ "paste",
               \ "selection",
               \ "exit-save",
               \ "deletion",
               \ "search-replace",
               \ "word",
               \ "quick-pairing",
               \ "create-and-move",
               \ "comments",
               \ "folds",
               \ "headers",
               \ "nerdtree",
               \ "spellcheck",
               \ "split",
               \ "tabs",
               \ "utils",
               \
               \ "latex",
               \ "python",
               \ "bash",
               \ "html",
\]
   execute ':call AddFile("' . file . '")'
endfor
