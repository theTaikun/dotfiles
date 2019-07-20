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
        autocmd VimEnter * :Lexplore
    augroup END
endif
let g:netrw_list_hide = '.git,.svn,.jpg,.png,.bmp,.swp,.un~'

"Settings to show tabs and trailing whitespace as visibile characters
"https://www.reddit.com/r/vimporn/comments/9v6y3q/who_said_your_terminal_textbased_interface_cant/e9e8268?utm_source=share&utm_medium=web2x
set list          " Display unprintable characters f12 - switches (displays symbol for spaces)
set listchars=tab:•\ ,trail:•,extends:»,precedes:« " Unprintable chars mapping syntax

tnoremap <ESC> <C-\><C-n> "When in terminal mode, remaps the <ESC> key so you can go back to normal mode
if ($TERM!='putty-256color' && $TERM!='screen-256color')           " If not using putty or screen/tmux,
    set termguicolors                                           " Required for vim-hexokinase
endif

" Settings for PaperColor theme
set t_Co=256
set background=dark
let g:PaperColor_Theme_Options = {
\  'theme': {
\    'default': {
\      'transparent_background': 1
\    }
\  }
\}
colorscheme PaperColor
