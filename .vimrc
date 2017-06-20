" enable project-specific vimrc files
set exrc
set secure

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'othree/html5.vim'
Plugin 'moll/vim-node'
Plugin 'saltstack/salt-vim'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'altercation/vim-colors-solarized'
Plugin 'fatih/vim-go'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-fugitive'
Plugin 'akhaku/vim-java-unused-imports'
Plugin 'derekwyatt/vim-scala'
Plugin 'elmcast/elm-vim'
Plugin 'rust-lang/rust.vim'
Plugin 'cespare/vim-toml'
call vundle#end()

let g:jsx_ext_required = 0 " Allow JSX in normal JS files


filetype plugin indent on
set nu
syntax on
set tabstop=4

set background=dark

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/
colorscheme darkblue

set expandtab
set shiftwidth=4
set autoindent
set shiftround

set ruler

set hlsearch
set incsearch
set ignorecase
set smartcase

set noswapfile

" CtrlP settings
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*.o,*/bower_components/*,*/target/*,*.class,*/dist/*

au FileType ruby set softtabstop=2 tabstop=2 shiftwidth=2
au FileType javascript set softtabstop=2 tabstop=2 shiftwidth=2
au FileType html set softtabstop=2 tabstop=2 shiftwidth=2
au FileType css set softtabstop=2 tabstop=2 shiftwidth=2
au FileType cpp set softtabstop=2 tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.ejs set filetype=html

" Salt files use jinja template syntax
let g:sls_use_jinja_syntax = 1

" requires installation of elm-format: https://github.com/avh4/elm-format
let g:elm_format_autosave = 1

" requires installation of rustfmt (via cargo)
let g:rustfmt_autosave = 1

autocmd Filetype gitcommit setlocal spell textwidth=72
