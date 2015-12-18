set nocompatible
set modelines=5                 " this should have been handled by
                                " nocompatible, but...
filetype off                    " required!

" Use Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'

" Plugins here
Plugin 'closetag.vim'
Plugin 'ctrlp.vim'
Plugin 'Syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'fugitive.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'lunaru/vim-less'
Plugin 'tpope/vim-commentary'
Plugin 'surround.vim'
Plugin 'gnupg.vim'
Plugin 'myusuf3/numbers.vim'
Plugin 'git://git.code.sf.net/p/vim-latex/vim-latex'
Plugin 'wannesm/wmgraphviz.vim'
Plugin 'rking/ag.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'bkad/CamelCaseMotion'
Plugin 'sjl/gundo.vim'
Plugin 'ledger/vim-ledger'

filetype plugin indent on       " required!
