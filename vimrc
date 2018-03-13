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
Plugin 'tomasr/molokai'
Plugin 'sheerun/vim-polyglot'
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}

if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    :BundleInstall
endif

filetype plugin on
filetype indent on
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
set softtabstop=2
set shiftwidth=2
autocmd FileType python setlocal shiftwidth=4 softtabstop=4
autocmd FileType go setlocal shiftwidth=4 softtabstop=4
syntax enable
set t_Co=256
colorscheme molokai
let g:molokai_original=1
nmap <F1> :NERDTreeToggle<CR>
let g:NERDSpaceDelims=1
let g:NERDTreeIgnore = ['node_modules']
nmap <silent> <F2> :tabp <CR>
nmap <silent> <F3> :tabn <CR>
nnoremap <F4> :set nonumber!<CR>:set foldcolumn=0<CR>
nnoremap <F5> gg=G''<CR>

"golang
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = 'goimports'

map <C-n> :cnext<CR>

autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>c <Plug>(go-coverage)
