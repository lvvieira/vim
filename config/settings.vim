let g:netrw_browsex_viewer="xdg-open"

set nocompatible

set path+=**

set wildmenu

set mouse=a

set clipboard=unnamedplus

set guicursor=

set pastetoggle=<F2>

set showcmd

set number relativenumber

set whichwrap=b,s,<,>,[,]

set fo-=t

set nobackup

set nowritebackup

set noswapfile

set linebreak

set laststatus=2

set title

set confirm

set ruler

set scrolloff=3

set nostartofline

set ttyfast

set title

set so=7

set showmatch

set mat=2

set noerrorbells

set novisualbell

set t_vb=

set tm=500

set iskeyword-=.

set encoding=utf8

set wildmode=longest:full

set wildmenu

set hidden

set smartindent

set lazyredraw

set tabstop=3

set shiftwidth=3

set softtabstop=3

set expandtab

set smarttab

set list listchars=tab:\ \ ,trail:·

set autoindent

set wrap
"set nowrap

"set hlsearch
set nohlsearch

set incsearch

set ignorecase

set smartcase

set magic

set history=1000

set cmdheight=1

filetype plugin on

filetype indent on

set nostartofline

set foldmethod=manual

set t_Co=256

syntax on

"==========================
" KEEP TRACK OF WHITE SPACES
"==========================
highlight ExtraWhitespace ctermbg=blue guibg=blue
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
