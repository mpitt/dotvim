" Vundle and bundles configuration
source ~/.vim/bundles.vim

" Syntax highlighting and color scheme
syntax enable
colorscheme solarized
set background=dark
set t_Co=16

set showcmd
set autowrite                       " save a file when switching to another
set number                          " enable line numbers
set cursorline                      " highlight current line
nmap j gj
nmap k gk
set scrolloff=3

" Sensible splits
set splitbelow
set splitright

" White space
set nowrap                          " don't wrap lines
set expandtab                       " expand tabs to spaces
set tabstop=2 shiftwidth=2          " a tab is 2 spaces
                                    " unless overridden by plugin
set autoindent                      " infer identation from near lines
set backspace=indent,eol,start      " backspace through everything in insert

set mouse=a

" Searching
set incsearch                       " incremental search
set ignorecase                      " ignore the case
set smartcase                       " unless search terms contain a capital

" Soft wrapping
" use :Wrap to set the necessary options
command! -nargs=* Wrap set wrap linebreak nolist

" Syntax checking
let g:syntastic_quiet_messages = {'level': 'warnings'}  " don't display warinigs, only errors
let g:syntastic_check_on_open = 1
let g:syntastic_python_checkers = ['flake8']

" Powerline
set laststatus=2
let g:Powerline_symbols = 'fancy'

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

" Overrides for filetype detection
source ~/.vim/filetype_overrides.vim

" Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Don't use conceal for sub/superscript
let g:tex_conceal='abgm'

" For Latex-Suite. Set grep to always generate a file-name
set grepprg=grep\ -nH\ $*
" Make latex-suite compile correctly when using dot2texi
let g:Tex_CompileRule_pdf='pdflatex -interaction=nonstopmode -file-line-error-style --enable-write18 $*'
" Rule for PDF viewer
let g:Tex_ViewRule_pdf=''
