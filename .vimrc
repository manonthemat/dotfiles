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
Plugin 'Rip-Rip/clang_complete'
call vundle#end()

filetype plugin indent on
set nu
syntax on
set tabstop=4
set t_Co=256

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/
colorscheme evening

set expandtab
set shiftwidth=4
set autoindent
set shiftround

set hlsearch
set incsearch
set ignorecase
set smartcase

" CtrlP settings
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*.o

au FileType ruby set softtabstop=2 tabstop=2 shiftwidth=2
au FileType javascript set softtabstop=2 tabstop=2 shiftwidth=2
au FileType html set softtabstop=2 tabstop=2 shiftwidth=2
au FileType css set softtabstop=2 tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.ejs set filetype=html
