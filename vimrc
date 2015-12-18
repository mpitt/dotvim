" Vundle and bundles configuration {{{
source ~/.vim/plugins.vim
" }}}
" Syntax highlighting and color scheme {{{
syntax enable
colorscheme solarized
set background=dark
set t_Co=16
" }}}
" ESC and <leader> remap {{{
let mapleader=","                   " set <leader> to comma
inoremap jk <esc>
" }}}
" UI and movement {{{
set showcmd
set number                          " enable line numbers
set cursorline                      " highlight current line
" move on visual lines, not logical
nmap j gj
nmap k gk
set scrolloff=3                     " always 3 lines above or below current
set splitbelow                      " sensible splits
set splitright
" }}}
" White space {{{
set nowrap                          " don't wrap lines
set expandtab                       " expand tabs to spaces
set tabstop=2 shiftwidth=2          " a tab is 2 spaces
                                    " unless overridden by plugin
set autoindent                      " infer identation from near lines
set backspace=indent,eol,start      " backspace through everything in insert
" Soft wrapping
" use :Wrap to set the necessary options
command! -nargs=* Wrap set wrap linebreak nolist
" }}}
" Mouse {{{
set mouse=a
" }}}
" Searching {{{
set incsearch                       " incremental search
set ignorecase                      " ignore the case
set smartcase                       " unless search terms contain a capital
" }}}
" Gundo {{{
nnoremap <leader>u :GundoToggle<CR>
"}}}
" Syntastic {{{
let g:syntastic_quiet_messages = {'level': 'warnings'}  " don't display warinigs, only errors
let g:syntastic_check_on_open = 1
let g:syntastic_python_checkers = ['flake8']
" }}}
" Powerline {{{
set laststatus=2
let g:Powerline_symbols = 'fancy'
" }}}
" Tweaking autocompletion (Wildmenu) {{{
if has("wildmenu")
    set wildignore+=*.a,*.o
    set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
    set wildignore+=.git,.hg,.svn
    set wildignore+=*~,*.swp,*.tmp
    set wildmenu
    set wildmode=longest,list
endif
" }}}
" Backups and autosave {{{
set backup 
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup
set autowrite                       " save a file when switching to another
" }}}
" Cursor position save and restore {{{
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
" }}}
" Filetype detection {{{
source ~/.vim/filetype_overrides.vim      " Overrides for filetype detection
" }}}
" LaTeX {{{
" Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Don't use conceal for sub/superscript
let g:tex_conceal='abgm'

" For Latex-Suite. Set grep to always generate a file-name
set grepprg=grep\ -nH\ $*
" Make latex-suite compile correctly when using dot2texi
let g:Tex_CompileRule_pdf='pdflatex --synctex=1 -interaction=nonstopmode -file-line-error-style --enable-write18 $*'
" Handle multiple compilation where producing PDFs directly
let g:Tex_MultipleCompileFormats='dvi, pdf'
" Set default PDF viewer
let g:Tex_ViewRule_pdf='Skim'
" }}}
" vim-ledger {{{
" https://github.com/ledger/vim-ledger
" Set the maximum width of the foldtext
let g:ledger_maxwidth = 80
let g:ledger_fold_blanks = 1
let g:ledger_decimal_sep = ','
let g:ledger_default_commodity = '€'
let g:ledger_commodity_before = 1
let g:ledger_main = 'ledger.dat'
let g:ledger_extra_options = '--pedantic --explicit'
let g:ledger_winpos = 'R'
" }}}

" vim:foldmethod=marker:foldlevel=0
