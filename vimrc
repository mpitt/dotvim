set nocompatible

execute pathogen#infect()

" Syntax highlighting and color scheme
syntax enable
set background=dark
colorscheme solarized

" Syntax checking
let g:syntastic_quiet_warnings=1    " don't display warinigs, only errors

" Powerline
set laststatus=2
let g:Powerline_symbols = 'fancy'

set showcmd
filetype plugin indent on
set autowrite                       " save a file when switching to another
set number                          " enable line numbers
nmap j gj
nmap k gk
set scrolloff=3

" White space
set nowrap                          " don't wrap lines
set expandtab                       " expand tabs to spaces
set tabstop=4 shiftwidth=4          " a tab is 4 spaces
                                    " unless overridden by plugin
set autoindent                      " infer identation from near lines
set backspace=indent,eol,start      " backspace through everything in insert

set mouse=a

" Searching
set incsearch                       " incremental search
set ignorecase                      " ignore the case
set smartcase                       " unless search terms contain a capital

" Tweaking autocompletion (Wildmenu)
if has("wildmenu")
    set wildignore+=*.a,*.o
    set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
    set wildignore+=.git,.hg,.svn
    set wildignore+=*~,*.swp,*.tmp
    set wildmenu
    set wildmode=longest,list
endif

" backup to ~/.tmp 
set backup 
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup

" Make vim position the cursor at the old position when reopening a file
set viminfo='10,\"100,:20,%,n~/.viminfo
function! ResCur()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunction

augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
augroup END
