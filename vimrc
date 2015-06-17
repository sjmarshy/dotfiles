call plug#begin('~/.vim/plugged')

Plug 'junegunn/seoul256.vim' 
Plug 'junegunn/rainbow_parentheses.vim', { 'for': 'clojure' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-leiningen', { 'for': 'clojure' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' } " Clojure REPL
Plug 'tpope/vim-classpath', { 'for': 'clojure' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sleuth'

Plug 'Shougo/neocomplete.vim'

Plug 'scrooloose/syntastic'

Plug 'sjl/gundo.vim'

Plug 'moll/vim-bbye'

Plug 'kien/ctrlp.vim'

Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

Plug 'airblade/vim-gitgutter'

Plug 'rking/ag.vim'

Plug 'stephpy/vim-yaml'
Plug 'chase/vim-ansible-yaml'

Plug 'maksimr/vim-jsbeautify'

Plug 'vim-scripts/paredit.vim', { 'for': 'clojure' }

" Plug 'pangloss/vim-javascript'
" Plug 'mgechev/vim-jsx' " requires pangloss/vim-javascript

call plug#end()

colo seoul256-light " set our colorscheme

set nocompatible
set t_Co=256
set ttyfast
set encoding=utf-8
set hidden
set nobackup
set nowritebackup
set backspace=2 " normal backspace usage

set ruler
set showcmd
set showmode

set modeline
set modelines=1
set title

set relativenumber
set numberwidth=3

let mapleader="\<Space>"

set nohlsearch
set incsearch
set ignorecase
set smartcase
set gdefault
set showmatch
set matchtime=1

set wrap
set textwidth=80
set colorcolumn=80
set cursorline

set scrolloff=10

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

nmap <leader>() :RainbowParentheses!!<cr>

nmap <leader>e :CtrlP<cr>
nmap <leader>b :CtrlPBuffer<cr>

nmap <leader>u :GundoToggle<cr>

let g:UltiSnipsExpandTrigger="<leader>s"
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

" autocmd BufWritePre *.js   :call JsBeautify()
" autocmd BufWritePre *.html :call HtmlBeautify()

" neocomplete
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><CR>  pumvisible() ? neocomplete#close_popup() : "\<CR>"

autocmd FileType javascript :set shiftwidth=4

" vim:foldmethod=marker:foldlevel=0
