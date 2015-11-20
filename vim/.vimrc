" vim-plug
call plug#begin()

Plug 'kien/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'Valloric/YouCompleteMe'

call plug#end()

if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
	source /etc/vim/vimrc.local
endif

if has("autocmd")
    " Load indentation rules and plugins according to the detected filetype.
	filetype plugin indent on
    " Jump to the last position when reopening a file
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    " Set make program to latexmk for .tex buffers
    au BufReadPost *.tex setl mp=latexmk\ -pdf\ %
    let g:tex_flavor = 'latex'
    au Filetype html setlocal ts=2 sts=2 sw=2 expandtab
    au Filetype css setlocal ts=2 sts=2 sw=2 expandtab
    au Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab
endif

if has("syntax")
	syntax on
endif

" Windows
if has ('gui_running')
    " Maximize on bootup
    if has ("autocmd")
        au GUIEnter * simalt ~x
    endif
    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar
    set guifont=Lucida_Console:h10
endif

set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ignorecase          " Do case insensitive matching
set smartcase           " Do smart case matching
set incsearch           " Incremental search
set autowrite           " Automatically save before commands like :next and :make and this and that
"set hidden             " Hide buffers when they are abandoned
"set mouse=a            " Enable mouse usage (all modes)
set cursorline          " Highlight screen line of the cursor
set number
set smartindent
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
"set list               " EOL, trailing spaces, tabs: show them.
"set listchars=tab:▸\ ,eol:¬
set textwidth=79
set formatoptions+=t
"set gdefault
set clipboard+=unnamed
set backspace =indent,eol,start " allow backspacing over everything in insert mode
set laststatus=2
set nojoinspaces
set ruler
set viminfo='20,\"50
set scrolloff=5

" Mappings
let mapleader = "\<space>"
map Y y$

nnoremap j gj
nnoremap k gk
inoremap jj <esc>
inoremap kk <esc>

" Insert mode movement
inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l

" Move lines
nnoremap <silent> <C-k> :move-2<cr>
nnoremap <silent> <C-j> :move+<cr>
nnoremap <silent> <C-h> <<
nnoremap <silent> <C-l> >>
nnoremap <silent> <CR> o<Esc>

nnoremap ! :!

nnoremap <C-S-f> mzgg=G`zzz                  " format document
" Trailing spaces
nnoremap <silent> <leader>t mz:%s/\s\+$//e<CR>`z
nnoremap <silent> <leader>T /\s\+$<CR>  " Show trailing whitespace
nnoremap <silent> <C-l> :nohls<CR>

nmap <leader>p "+p
nmap <leader>P "+P
vmap <leader>y "+y
map <leader><tab> gt
nmap <leader>b :ls<CR>:b<Space>

" Jump to last char inserted
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

noremap q: :q


set fillchars+=stl:\ ,stlnc:\
let g:netrw_liststyle=3

" Airline status bar
if !exists("g:airline_symbols")
	let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

"let g:airline_symbols.space = "\ua0"
let g:airline_powerline_fonts=1
let g:airline_theme="badwolf"
"let g:airline#extensions#tabline#enabled = 1

" You Complete Me
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_autoclose_preview_window_after_insertion=1

set background=dark
colorscheme badwolf
