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
Bundle 'lunaru/vim-less'
Bundle 'The-NERD-Commenter'
Bundle 'surround.vim'
Bundle 'gnupg.vim'
Bundle 'myusuf3/numbers.vim'
Bundle 'git://git.code.sf.net/p/vim-latex/vim-latex'

filetype plugin indent on       " required!
