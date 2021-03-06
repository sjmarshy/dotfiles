call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'NLKNguyen/papercolor-theme'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'Shougo/neocomplete.vim'

Plug 'tpope/vim-abolish'

Plug 'tpope/vim-leiningen', { 'for': 'clojure' }
Plug 'bhurlow/vim-parinfer', { 'for': 'clojure' }
Plug 'junegunn/rainbow_parentheses.vim', { 'for': 'clojure' }

Plug 'tpope/vim-fugitive'

Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'

Plug 'sjl/gundo.vim'

Plug 'moll/vim-bbye'

Plug 'kien/ctrlp.vim'

Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

Plug 'airblade/vim-gitgutter'

Plug 'stephpy/vim-yaml'
Plug 'chase/vim-ansible-yaml'

Plug 'wincent/terminus'

Plug 'editorconfig/editorconfig-vim'

Plug 'raichoo/purescript-vim'
Plug 'haya14busa/vim-undoreplay'

Plug 'kchmck/vim-coffee-script', { 'for': 'coffeescript' }

Plug 'mattn/emmet-vim'

Plug 'xsbeats/vim-blade'
Plug 'fatih/vim-go'
Plug 'garyburd/go-explorer'
Plug 'majutsushi/tagbar'

Plug 'udalov/kotlin-vim'

Plug 'christoomey/vim-sort-motion'
Plug 'vim-scripts/c.vim'

Plug 'ternjs/tern_for_vim'

Plug 'mustache/vim-mustache-handlebars'

Plug 'fmoralesc/vim-pad'

Plug 'justinmk/vim-sneak'

Plug 'mhinz/vim-startify'
Plug 'daveyarwood/vim-alda'

Plug 'elmcast/elm-vim'

Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }
Plug 'vim-scripts/JavaScript-Indent', { 'for': 'javascript' }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }

Plug 'Raimondi/delimitMate'

call plug#end()

colo PaperColor

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
set number
set numberwidth=2

nnoremap <Space> <NOP>
let mapleader="\<Space>"

set nohlsearch
set incsearch
set ignorecase
set smartcase
set gdefault
set showmatch
set matchtime=1

set colorcolumn=100
set cursorline

set scrolloff=10

set visualbell

set laststatus=2

set shiftwidth=4
set expandtab

filetype on
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

let b:javascript_fold = 1
let g:syntastic_javascript_checkers = ['eslint', 'flow']

" neocomplete
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><CR>  pumvisible() ? neocomplete#close_popup() : "\<CR>"

" nerdtree
map <C-f> :NERDTreeToggle<CR>

" editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
let g:EditorConfig_exec_path = '/usr/local/bin/editorconfig'

" tern
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.javascript = '[^. \t]\.\w*'
autocmd FileType javascript setlocal omnifunc=tern#Complete

" vim-pad
let g:pad#dir = '~/.notes'

" ctrl-p
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --ignore node_modules --nocolor -g ""'
endif
