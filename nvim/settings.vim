let os=substitute(system('uname'), '\n', '', '')

set number
set relativenumber
set ruler
set nocompatible
set backspace=2
set autoindent
set nowrap
set ic
set cindent
set history=100
set hlsearch
set incsearch
set expandtab
set smarttab
set mouse=a
set foldmethod=indent
set foldlevelstart=20
set cursorline
set shell=/bin/bash
set wildmode=longest,list,full
set showcmd
set laststatus=2
set startofline
set scrolloff=3
set visualbell
set listchars=eol:¬,tab:▸\ ,trail:~,extends:>,precedes:<
set list
set updatetime=100
set timeoutlen=1000 ttimeoutlen=10
exec 'set path=' . getcwd() . ',' . getcwd() . '/**'

autocmd BufEnter,BufReadPost * set tabstop=2 shiftwidth=2 textwidth=0
autocmd BufEnter,BufReadPost *.py setlocal ts=4 sw=4

if os == 'Darwin' || os == 'Mac'
    set clipboard=unnamed
elseif os == 'Linux'
    set clipboard=unnamedplus
endif

" Buffer settins
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" More natural split opening"
set splitbelow
set splitright
