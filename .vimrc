set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
if has('unix')
		set rtp+=~/.vim/bundle/Vundle.vim
		call vundle#begin()
elseif has('win32') || has('win64')
		set rtp+=$HOME/vimfiles/bundle/Vundle.vim
		call vundle#begin('$USERPROFILE/vimfiles/bundle')
endif
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'pangloss/vim-javascript'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'shougo/neocomplete.vim'
Plugin 'stanangeloff/php.vim'
Plugin 'taglist.vim'
Plugin 'nelstrom/vim-mac-classic-theme'
Plugin 'jiangmiao/auto-pairs'


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
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set linespace=5
if has('gui_running')
		"remove top toolbar
		set guioptions-=T
		"remove menubar
		set guioptions -=m
		set guioptions-=r "removes righthand scrollbar
		set go-=L " remove left hand scrollbar
		set guifont=Fira\ Code:h11
		colorscheme mac_classic
		if has('win32') || has('win64')
				function ToggleFullScreen()
								call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)
				endfunction
				map <F11> :call ToggleFullScreen()<CR>
		endif
endif		
set showmode
set nowrap
set tabstop=4
set smarttab
set tags=tags
set softtabstop=4
set backspace=indent,eol,start
set autoindent
set copyindent
set number
set ignorecase
set smartcase
set visualbell
set noerrorbells
set autowrite
"Show (partial) command in the status line
set showcmd
set mouse=a
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saves
nmap <leader>w :w!<cr>

"Auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-b> :NERDTreeToggle<cr>

" Create split below
nmap :sp :rightbelow sp<cr>
" Create/edit file in the current directory
nmap :ed :edit %:p:h/
syn on
