set cursorline
set smartindent
" Ensure using UTF-8, fixes isues when setting listchars below
set encoding=utf-8
scriptencoding utf-8  " According to :h scriptencoding,
                      " if `set encoding` is set, it must appear before
                      " `scriptencoding`

" options for the the default netrw to make it more like the NERDtree plugin
" From https://shapeshed.com/vim-netrw/
" ===============================================
let g:netrw_banner =0            " Removes Banner
let g:netrw_liststyle = 3        " Makes the list a tree
let g:netrw_browse_split = 4     " Opens new files in previous window
let g:netrw_altv = 1             " Change from left splitting to right splitting
let g:netrw_winsize = 25         " Set netrw window size
if !&diff " If not using vimdiff
" Following autogroup xecutes when new file opened for r/w.
" End group
    augroup ProjectDrawer
        " Clears out all previous options from this group
        autocmd!
        " After doing all the startup stuff (VimEnter) Opens Vexplore (the netrw tree)
        autocmd VimEnter * :Lexplore
        " switch window focus (away from netrw)
        autocmd VimEnter * :wincmd p
    augroup END
endif
let g:netrw_list_hide = '.git,.svn,.jpg,.png,.bmp,.swp,.un~'

" Close netrw if it's the last and only buffer
aug netrw_close
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw"|q|endif
aug END

" Set a visible border for word wrapping
" If wrapping not explicitly set, set border at industry standard of 80columns
if &textwidth == 0
    set colorcolumn=80
else
    let colorcolumn=&textwidth
endif

" Uses relative line numbers when in normal mode,
"   and normal line numbers when in insert
" Makes it easier to jump around the document
" Found at:
" https://www.reddit.com/r/unixporn/comments/d79yj4/i3gaps_cooling_elegance/f0ypivp/
" =======================================
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set number relativenumber
    autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber 
augroup END

"Settings to show tabs and trailing whitespace as visibile characters
"https://www.reddit.com/r/vimporn/comments/9v6y3q/who_said_your_terminal_textbased_interface_cant/e9e8268?utm_source=share&utm_medium=web2x
"=================================================================
set list          " Display unprintable characters f12 - switches (displays symbol for spaces)
set listchars=tab:•\ ,trail:•,extends:»,precedes:« " Unprintable chars mapping syntax

tnoremap <ESC> <C-\><C-n> "When in terminal mode, remaps the <ESC> key so you can go back to normal mode


" Color correction depending on terminal in use
" =============================================
if ($TERM!='putty-256color' && $TERM!='tmux-256color' && $TERM!='screen-256color' && $TERM!='linux')           " If not using putty or screen/tmux,
    set termguicolors                                           " Required for vim-hexokinase
endif

" Settings for PaperColor theme
"   Must be set before setting colorscheme
" ===========================
set t_Co=256
set background=dark
let g:PaperColor_Theme_Options = {
\  'theme': {
\    'default': {
\      'transparent_background': 1
\    }
\  }
\}

" Choose only one theme
" =======================
colorscheme PaperColor
" colorscheme blaquemagick
" colorscheme gruvbox
