autocmd bufwritepost .vimrc source $RC

call plug#begin()

   Plug 'scrooloose/nerdtree'
"   Plug 'nightsense/snow'
   Plug 'tomasr/molokai'
   Plug 'jnurmine/Zenburn'
"   Plug 'chriskempson/vim-tomorrow-theme'
"   Plug 'morhetz/gruvbox'
"   let g:gruvbox_contrast_dark = 'soft'
"   Plug 'yuttie/hydrangea-vim'
   Plug 'tyrannicaltoucan/vim-deep-space'
"   Plug 'AlessandroYorba/Despacio'
"   Plug 'cocopon/iceberg.vim'
"   Plug 'w0ng/vim-hybrid'
"   Plug 'nightsense/snow'
"   Plug 'nightsense/stellarized'
"   Plug 'arcticicestudio/nord-vim'
"   Plug 'nightsense/cosmic_latte'
"   Plug 'flazz/vim-colorschemes'
"   Plug 'Yggdroot/indentLine'
call plug#end()

noremap <leader>pi :PlugInstall<CR>

