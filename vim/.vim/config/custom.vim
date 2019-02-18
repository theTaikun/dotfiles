set cursorline
set smartindent

" options for the the default netrw to make it more like the NERDtree plugin
" From https://shapeshed.com/vim-netrw/
let g:netrw_banner =0            " Removes Banner
let g:netrw_liststyle = 3        " Makes the list a tree
let g:netrw_browse_split = 4     " Opens new files in previous window
let g:netrw_altv = 1             " Change from left splitting to right splitting
let g:netrw_winsize = 25         " Set netrw window size
if !&diff " If not using vimdiff
" Following autogroup xecutes when new file opened for r/w.
" Cant place comments inline
" Clears out all previous options from this group
" After doing al the startup stuff (VimEnter) Opens Vexplore (the netrw tree)
" End group
    augroup ProjectDrawer
        autocmd!
        autocmd VimEnter * :Vexplore
    augroup END
endif
let g:netrw_list_hide = '.git,.svn,.jpg,.png,.bmp'
