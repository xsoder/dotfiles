syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set guifont=Iosevka\ 20
set guioptions-=m
set guioptions-=T
set noesckeys
set relativenumber
set number
set ignorecase
set smartcase
set incsearch
set cinoptions=l1
set modeline
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
set autoindent
set autochdir
colorscheme habamax

map gf :e <cfile><CR>
nnoremap Y :let g:col = col('.')<CR>Yp:call cursor(line('.'), g:col)<CR>
