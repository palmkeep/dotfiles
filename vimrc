execute pathogen#infect()

colorscheme lyla

set encoding=utf-8
filetype on
filetype indent on


"Required by Pathogen
syntax on
filetype plugin on
set nocompatible

"Start NERDTree at startup if no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"NERDTree Macro
map <C-n> :NERDTreeToggle<CR>



" ============================== General Config =============================

set ruler
set backspace=indent,eol,start
set history=1000
set showcmd
set showmode
set undolevels=1000
set laststatus=2
set hidden  " Better buffer-handling
let mapleader = "," " Exchange \ for , in commands


" ============================== Line-numbering =============================
" Displays whitespace-characters with ,s

set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>


" ============================== Line-numbering =============================

set number
set relativenumber

autocmd InsertEnter * :set norelativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber


" ============================== Linebreak-handling =============================
" Prevents VIM from automatically inserting linebreaks in newly entered

set linebreak
set nolist
set showbreak=+++
set textwidth=0
set wrapmargin=0


" ============================== Search =============================

set incsearch   " Find the next match as we type the search
set hlsearch    " Highlight searches by default
set ignorecase  " Ignorecase when searching...
set smartcase   " ... Unless we type a capital


" ============================== Indentation =============================

set autoindent 
set tabstop=4 softtabstop=4 shiftwidth=4 
set expandtab

" Auto-indent pasted text
nnoremap p p=`]<C-o>
nnoremap p p=`]<C-o>


" ============================== Notification & Highlights=============================

set showmatch 
set visualbell 

"au BufWinEnter *.py let w:m1=matchadd('Search', '\%<81v.\%>77v', -1)
au BufWinEnter *.py let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)


" ============================== Scrolling ============================== 

set scrolloff=8
set sidescrolloff=5
set sidescroll=1


" ============================== EOF ============================== 

