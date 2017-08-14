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
Plugin 'sheerun/vim-polyglot'
Plugin 'tomasr/molokai'

if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    :BundleInstall
endif

filetype plugin on
filetype indent on
syntax enable

set incsearch
set ignorecase
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
set tabstop=2
set softtabstop=2
set shiftwidth=2
set t_Co=256

colorscheme molokai
let g:molokai_original=1

nmap <F1> :NERDTreeToggle<CR>
let g:NERDTreeIgnore = ['node_modules']

nmap <silent> <F2> :tabp <CR>
nmap <silent> <F3> :tabn <CR>

nnoremap <F4> :set nonumber!<CR>:set foldcolumn=0<CR>

autocmd FileType python setlocal noexpandtab shiftwidth=4 tabstop=4 softtabstop=4

