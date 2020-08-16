" If any path below does not exist,
" will break markdown syntax system-wide,
" without warning
let g:vimwiki_list = [
            \{'path': '~/vimwiki/',
            \'syntax': 'markdown',
            \'ext': '.md'}
            \]
let g:vimwiki_ext2syntax={'.txt': 'markdown'}
let g:vimwiki_markdown_link_ext=1
