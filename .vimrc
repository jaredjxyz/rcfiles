" MY SETTINGS

" UI
set tabstop=4" Visual tab = 4 spaces
set softtabstop=4" When editing, tab = 4 spaces wide
set expandtab" tab button -> spaces
set number" Show line numbers
set showcmd" Show the last command you entered
set wildmenu" visual autocomplete for command menu
set lazyredraw" redraw only when we need to
set showmatch" Highlight matching [{()}]
set hidden" Allows one to switch without saving
set autoindent" Stays on current indent when no file-specific intenting
set confirm" Ask to save changes instead of failing a command
set visualbell" Show something on screen instead of making sound when wrong

" Search
set incsearch" Search as characters are entered
set hlsearch" Highlight matches
set ignorecase" Ignore case
set smartcase" ...Except when using capital letters

" Movement
nnoremap j gj" Move down visually when line wraps
nnoremap k gk" Move up visually when line wraps


" VUNDLE STUFF

set nocompatible" be iMproved, required
filetype off" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'" let Vundle manage Vundle, required

Plugin 'tpope/vim-fugitive'" Git plugin

Plugin 'scrooloose/syntastic'" Syntax checker

Plugin 'bling/vim-airline'" vim status bar

Plugin 'tpope/vim-sleuth'" Sleuth for detecting spaces vs tabs

Plugin 'bronson/vim-trailing-whitespace'" Fix trailing whitespace

" All of your Plugins must be added before the following line
call vundle#end()" required
filetype plugin indent on" required
" To ignore plugin indent changes, instead use:
" filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" PLUGIN SETTINGS

" Syntastic settings
let g:syntastic_python_checkers = ['flake8']
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Airline settings
let g:airline#extensions#syntastic#enabled = 1

