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
Plugin 'racer-rust/vim-racer'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'jparise/vim-graphql'
Plugin 'jiangmiao/auto-pairs'
Plugin 'w0rp/ale'
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

set hidden
let g:racer_cmd = "~/.cargo/bin/racer"

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

au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

" if ALE isn't working correctly,
" run :ALEInfo to surface potentially missing deps
let g:ale_fix_on_save = 1
let g:ale_fixers = {'javascript': ['eslint']}
" let g:ale_javascript_eslint_use_global = 1
