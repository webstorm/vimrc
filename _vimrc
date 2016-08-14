set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim
call vundle#begin('$USERPROFILE/vimfiles/bundle')
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
Plugin 'altercation/vim-colors-solarized'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'honza/vim-snippets'
Plugin 'godlygeek/tabular'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'airblade/vim-gitgutter'
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
set linespace=6
if has('gui_running')
  "remove top toolbar
  set guioptions-=T
  "remove menubar
  set guioptions -=m
  set guioptions-=r "removes righthand scrollbar
  set go-=L " remove left hand scrollbar
  set guifont=Meslo\ LG\ M\ for\ Powerline:h10
  let g:airline_powerline_fonts = 1
  "airline plugin configuration
  let g:airline#extensions#tabline#enabled = 1
  set background=dark
  colorscheme solarized
  if has('win32') || has('win64')
    function! ToggleFullScreen()
      call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)
    endfunction
    map <F11> :call ToggleFullScreen()<CR>
  endif
endif
syn on
set encoding=utf-8
set autoindent
set smartindent
set copyindent
set number
set ignorecase
set smartcase
set visualbell
set noerrorbells
set autowrite
set showcmd
set showmode
set nowrap
set expandtab
set smarttab
set hlsearch
set nobackup
set noswapfile
set incsearch
set tabstop=2
set shiftwidth=2
set tags=tags
set softtabstop=2
set backspace=indent,eol,start
let mapleader = ","
let g:mapleader = ","
nmap <leader>w :w!<cr>
nmap <silent> <leader>/ :nohlsearch<CR>
"Auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
"nmap <C-b> :NERDTreeToggle<cr>
" Create split below
nmap :sp :rightbelow sp<cr>
" Create/edit file in the current directory
nmap :ed :edit %:p:h/
"NERDCommentor
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"Drupal configuration
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif
"clean whitespace on file save
autocmd BufWritePre * StripWhitespace
"configure syntastic plugin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"Quit using arrow keys for movements
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
