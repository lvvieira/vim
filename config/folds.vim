"============================================================
" FOLDS FOLDS FOLDS FOLDS FOLDS FOLDS FOLDS FOLDS FOLDS FOLDS
"============================================================

" Keep folds persistent
" augroup AutoSaveFolds
"   autocmd!
"   autocmd BufWinLeave * mkview
"autocmd BufWinEnter * silent loadview
" augroup END
"noremap <leader>lv :loadview<CR>
" zd delete a folder not its content
" zo open a folder
" zR open all folders
" zc close a folder
" zA open a closed fold or close an open fold
" zC close folds recursively
" zD delete folds recursively
" zE eliminate all folds
" zF create a fold for N lines
" zk move to the start of the next fold
" zi move to the end of the previous fold

" Open and close folders by pressing <space>
noremap <space><space> @= ((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

" move to the end of the previous fold
nno zi zk

" zk move to the start of the next fold
nno zk zj

