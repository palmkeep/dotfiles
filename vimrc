" ============================== Vundle =============================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" ============================== UltiSnips ============================
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" ============================== YouCompleteMe =============================
Plugin 'Valloric/YouCompleteMe'

let g:ycm_confirm_extra_conf = 1                "Always prompt before executing .ycm_extra_conf.py
let g:ycm_server_keep_logfile = 1
""" let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_server_log_level = 'debug'
let g:ycm_server_python_interpreter = "python3"
let g:ycm_min_num_of_chars_for_completion = 3

"inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"

" ============================== YouCompleteMe =============================
" A Vim plugin flr Lively Previewing LaTeX PDF Output
Plugin 'xuhdev/vim-latex-live-preview'
let g:livepreview_previewer = 'xpdf'

" ============================== Vundle end of init  =============================
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" ============================== General =============================
set encoding=utf-8
syntax on
filetype plugin indent on

colorscheme lyla


" ============================== general config =============================

set ruler
set backspace=indent,eol,start
set history=1000
set showcmd
set showmode
set undolevels=1000
set laststatus=2
set hidden  " Better buffer-handling
let mapleader = "," " Exchange \ for , in commands

set nomodeline

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


" ============================== Linebreak-handling =========================
" Prevents VIM from automatically inserting linebreaks in newly entered

set linebreak
set nolist
set showbreak=+++
set textwidth=0
set wrapmargin=0


" ============================== Search =====================================

set incsearch   " Find the next match as we type the search
set hlsearch    " Highlight searches by default
set ignorecase  " Ignorecase when searching...
set smartcase   " ... Unless we type a capital


" ============================== Indentation ================================

set autoindent 
set tabstop=4 softtabstop=4 shiftwidth=4 
set expandtab

" Auto-indent pasted text
nnoremap p p=`]<C-o>
nnoremap p p=`]<C-o>


" ============================== Notification & Highlights===================

set showmatch 

"au BufWinEnter *.py let w:m1=matchadd('Search', '\%<81v.\%>77v', -1)
au BufWinEnter *.py let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

map <leader>h :noh<CR>


" ============================== Scrolling ==================================

set scrolloff=8
set sidescrolloff=5
set sidescroll=1

" ============================== Buffers ==================================

" Prompt user to confirm when exiting a buffer with unsaved changes
set confirm

nnoremap <F5> :buffers<CR>:buffer<Space>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" ============================== Func ========================================

" Opens up the text in the first set of "-quotation marks as a pdf file in the
" current directory
map <leader>p 0/"<CR>yi":!xpdf <C-R>" & disown<CR><CR>


" ============================== EOF ========================================

