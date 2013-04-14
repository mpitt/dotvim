set nocompatible
filetype off                    " required!

" Use Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Bundles here
Bundle 'closetag.vim'
Bundle 'ctrlp.vim'
Bundle 'Syntastic'
Bundle 'altercation/vim-colors-solarized'
Bundle 'fugitive.vim'
Bundle 'Lokaltog/vim-powerline'

filetype plugin indent on       " required!
