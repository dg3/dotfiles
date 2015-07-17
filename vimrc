"===============================================================================
" VimRC using Vundle to manage plugins
"###############################################################################


"===============================================================================
" Vundle Setup
"===============================================================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" Autoclose
Plugin 'townk/vim-autoclose'

" Gundo
Plugin 'sjl/gundo.vim'

" Pep8
Plugin 'cburroughs/pep8' 

" Vim-Tmux Navigator
Plugin 'christoomey/vim-tmux-navigator'

" SnipMate + Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Plugin brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"###############################################################################


"===============================================================================
" Use powerline for vim statusline
"===============================================================================
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

set rtp +={/usr/lib/python2.7/site-packages/powerline/bindings/vim} 

set laststatus=2                                    " Always display the statusline in all windows 
set showtabline=2                                   " Always display the tabline
set noshowmode                                      " Hide the default mode text
"###############################################################################


"===============================================================================
" Set Visual Preferences
"===============================================================================
syntax enable			                               " enable syntax processing

set tabstop=3			                               " visual spaces per tab
set softtabstop=4		                               " spaces in tab when editing
set expandtab			                               " tabs are spaces

set number                                          " show line numbers
set showcmd			                                  " show command in bottom bar
set cursorline			                               " highlight current line
filetype indent on	                               " load filetype-specific indent files
set wildmenu			                               " visual autocomplete for command menu
set lazyredraw			                               " redraw only when we need to
set showmatch			                               " highlight matching [{()}]

set incsearch 			                               " search as characters are entered
set hlsearch			                               " highlight matches
"###############################################################################


"===============================================================================
" Keybinds
"===============================================================================
let mapleader=","	                                  " leader is comma

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" move between split windows w/ ctr + movement
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
noremap <c-h> <c-w>h

" move window location w/ ctrl + W + movement
noremap <c-w>j <c-w>J
noremap <c-w>k <c-w>K
noremap <c-w>l <c-w>L
noremap <c-w>h <c-w>H

" new splits are in the bottom-right
set splitbelow
set splitright

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight las inserted text 
nnoremap gV '[V']

" jk is escape
inoremap jk <esc>
"###############################################################################
