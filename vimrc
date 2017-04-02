set nocompatible

let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tmhedberg/matchit'
Plugin 'tomasr/molokai'

if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    :BundleInstall
endif

filetype plugin on
filetype indent on
set incsearch
set ignorecase
set noshowmode
set ruler
set number
set cursorline
set backspace=2
set showmatch
set encoding=utf8
set fileencoding=utf8
set termencoding=utf8
set nobomb
set fileformat=unix
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
syntax enable
set t_Co=256
colorscheme molokai
let g:molokai_original=1

nmap <F1> :NERDTreeToggle<CR>
let g:NERDSpaceDelims=1

nmap <silent> <F2> :tabp <CR>
nmap <silent> <F3> :tabn <CR>
nnoremap <F4> :set nonumber!<CR>:set foldcolumn=0<CR>

