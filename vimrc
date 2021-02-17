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
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sheerun/vim-polyglot'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'fatih/vim-go'

if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    :BundleInstall
endif

filetype plugin on
filetype indent on
syntax enable
set t_Co=256
colorscheme molokai
set showmatch
set ruler
set number
set cursorline
set incsearch
set ignorecase
set backspace=2
set encoding=utf8
set fileencoding=utf8
set termencoding=utf8
set nobomb
set fileformat=unix
set softtabstop=2
set shiftwidth=2
set expandtab
set clipboard=unnamed

let g:molokai_original=1

let g:NERDSpaceDelims=1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = 'goimports'

nmap <F1> :NERDTreeToggle<CR>
nmap <silent> <F2> :tabp <CR>
nmap <silent> <F3> :tabn <CR>
nmap <F4> :set nonumber!<CR>:set foldcolumn=0<CR>
nmap <F12> gg=G''<CR>

map <C-n> :cnext<CR>

autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>c <Plug>(go-coverage)
autocmd FileType go setlocal shiftwidth=4 softtabstop=4
autocmd FileType python setlocal shiftwidth=4 softtabstop=4

