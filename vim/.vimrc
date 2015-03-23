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

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
	filetype plugin indent on
endif

if has("syntax")
	syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
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

" Changes tabs to 4 spaces with smart autoindent
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
set nojoinspaces		" Don't include an additional space after line join (J)
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
nnoremap ! :!
nnoremap <CR> o<Esc>

map <C-S-f> mzgg=G`zzz                  " format document
" remove trailing whitespace and go back to previous place
nnoremap <silent> <leader>t mz:%s/\s\+$//e<CR>`z
nnoremap <silent> <leader>T /\s\+$<CR>  " Show trailing whitespace
nnoremap <silent> <C-l> :nohls<CR>

nmap <leader>p "+p
nmap <leader>P "+P
nmap <leader>y "+y
map <leader><tab> gt
nmap <leader>b :ls<CR>:b<Space>

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
"let g:airline_symbols.space = "\ua0"
let g:airline_powerline_fonts=1
let g:airline_theme="badwolf"
"let g:airline#extensions#tabline#enabled = 1

let g:ycm_autoclose_preview_window_after_insertion=1
colorscheme Tomorrow-Night-Eighties
