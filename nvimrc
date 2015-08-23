call plug#begin('~/.nvim/plugged')

Plug 'NLKNguyen/papercolor-theme'

Plug 'Shougo/neocomplete.vim'

Plug 'scrooloose/syntastic'

Plug 'kien/ctrlp.vim'

Plug 'sirver/ultisnips'

Plug 'honza/vim-snippets'

Plug 'editorconfig/editorconfig-vim'

call plug#end()

colo PaperColor

set backspace=2 " normal backspace usage

set encoding=utf-8

set nobackup
set nowritebackup

set ruler
set showcmd
set showmode

set modeline
set modelines=1
set title

set relativenumber
set numberwidth=3

nnoremap <Space> <NOP>
let mapleader="\<Space>"

set nohlsearch
set incsearch
set ignorecase
set smartcase
set gdefault
set showmatch
set matchtime=1

set wrap
set colorcolumn=80
set cursorline

set scrolloff=20

set visualbell

set laststatus=2

filetype on
filetype plugin on
filetype plugin indent on
syntax enable

set wildmenu
set wildmode=list:longest

set lazyredraw

nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <tab> %
vnoremap <tab> %

nnoremap H 0
nnoremap L $
vnoremap H 0
vnoremap L $

nnoremap <leader>sv :so $MYVIMRC<cr>

nmap <leader>e :CtrlP<cr>
nmap <leader>b :CtrlPBuffer<cr>

let g:UltiSnipsExpandTrigger="<leader>;"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" syntastic

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

" neocomplete
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><CR>  pumvisible() ? neocomplete#close_popup() : "\<CR>"

