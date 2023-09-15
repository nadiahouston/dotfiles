filetype plugin indent on
syntax on
set confirm

set mouse=a
set backspace=indent,eol,start

" toggle tabs
map <TAB> :bn!<CR>
map <S-TAB> :bp!<CR>

" make tab toggle skip terminal
augroup termIgnore
    autocmd!
    autocmd TerminalOpen * set nobuflisted
augroup END

" disable auto-comment on new line
set formatoptions-=c formatoptions-=r formatoptions-=o


"folding setting
" zc folds at the current place
" zM folds everything
" zR unfolds everything
" za toggle folding
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=2         "this is just what i use

" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" turn line numbers on
set number
" highlight matching braces
set showmatch

" Remove trailing whitespace on write
autocmd BufWritePre * :%s/\s\+$//e

" Display unprintable characters f12 -
set list
" Unprintable chars mapping
set listchars=tab:•\ ,trail:•,extends:»,precedes:«

" air-line
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep='>'
let g:airline_right_sep='<'
let g:airline_detect_paste=1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'

call plug#begin()

Plug 'zacharied/lc3.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'

call plug#end()

