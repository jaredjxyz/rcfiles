" Jared's vim settings

" VUNDLE STUFF

set nocompatible" be iMproved, required
filetype off" required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"ffdjmasjfasdnfsmadf,nasdmfd,slanfmsdkalfnmasdklfnsdmakf,lndmsa,.fnmsd,f.nasdfm,g.nsdagfm,asdf.gnsdfam,g.snmsdg,.anmdgf,.dngfmasd,f.gnmsdf,.gfndsm,gf.nasdfmg,.adfngmdfa,.gnfsdm,s.ngfmad,.agnmasd,.gnasdfgm,.sdgnasdgfm,

Plugin 'VundleVim/Vundle.vim'" let Vundle manage Vundle, required

Plugin 'tpope/vim-fugitive'" Git plugin

"Plugin 'scrooloose/syntastic'" Syntax checker

Plugin 'bling/vim-airline'" vim status bar

Plugin 'tpope/vim-sleuth'" Sleuth for detecting spaces vs tabs

Plugin 'bronson/vim-trailing-whitespace'" Fix trailing whitespace

Plugin 'ctrlpvim/ctrlp.vim'" Find files and folders easily with :CtrlP

Plugin 'scrooloose/nerdcommenter'" Commenting help

Plugin 'w0rp/ale'" Asynchronous linting

Plugin 'airblade/vim-gitgutter'" Git gutter on the side

Plugin 'sickill/vim-pasta'" Better put for vim

Plugin 'altercation/vim-colors-solarized'" Solarized color scheme for vim

Plugin 'mbbill/undotree'" Undo tree for vim

Plugin 'scrooloose/nerdtree'" File explorer for vim

Plugin 'tmux-plugins/vim-tmux-focus-events'" Make tmux focus events work

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

" Airline settings
let g:airline#extensions#syntastic#enabled = 1

" Nerdtree settings
" If nerdtree is the only window open, close it
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ALE settings
let g:ale_linters = {
\  'python': ['flake8'],
\  'html': ['tidy']
\}

" NERDTree settings
" let NERDTreeMapOpenInTab='<ENTER>'" Open in new tab by default
let NERDTreeQuitOnOpen=0

" MY SETTINGS

" UI
set tabstop=4" Visual tab = 4 spaces
set softtabstop=4" When editing, tab = 4 spaces wide
set expandtab" tab button -> spaces
set number" Show line numbers
set relativenumber" Show line numbers relative to current location
set showcmd" Show the last command you entered
set wildmenu" visual autocomplete for command menu
set lazyredraw" redraw only when we need to
set showmatch" Highlight matching [{()}]
set hidden" Allows one to switch without saving
set autoindent" Stays on current indent when no file-specific intenting
set confirm" Ask to save changes instead of failing a command
set visualbell" Show something on screen instead of making sound when wrong
set background=dark" Dark background
set autoread" Re-read in on focus gained

syntax enable" Enable syntax highlighting
colorscheme solarized" Cool color scheme, must have solarized plugin installed

autocmd InsertEnter * :set norelativenumber" Unset relative numbers in insert mode
autocmd InsertLeave * :set relativenumber" Set relative numbers outside of insert mode

au FocusLost * :wa" Save on focus lost

" Search
set incsearch" Search as characters are entered
set hlsearch" Highlight matches
set ignorecase" Ignore case
set smartcase" ...Except when using capital letters

" Movement
nnoremap j gj" Move down visually when line wraps
nnoremap k gk" Move up visually when line wraps
nnoremap <Up> g<Up>" Same for up arrow key
nnoremap <Down> g<Down>" Same for down arrow key

set scrolloff=5" Make sure there are 5 lines below and above the cursor when scrolling
