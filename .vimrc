" vim-plug
call plug#begin()

Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe'
"Plug 'SirVer/ultisnips'

call plug#end()

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
    source /etc/vim/vimrc.local
endif

if has("autocmd")
    " Load indentation rules and plugins according to the detected filetype.
    filetype plugin indent on
    " Jump to the last position when reopening a file
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    au Filetype html setlocal ts=2 sts=2 sw=2 expandtab
    au Filetype css setlocal ts=2 sts=2 sw=2 expandtab
    au Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab
    au Filetype sh setlocal ts=2 sts=2 sw=2 expandtab

    let g:tex_flavor = 'latex'
    au Filetype tex setlocal makeprg=latexmk\ -pdf\ -%
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

set spelllang=en_ca

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
"set gdefault
set clipboard+=unnamed
set backspace =indent,eol,start " allow backspacing over everything in insert mode
set laststatus=2        " Always show status line
set formatoptions+=j    " Delete comment char when joining lines
set nojoinspaces
set ruler               " Show Line/Col/% in status line
set viminfo='20,\"50
set fillchars+=stl:\ ,stlnc:\
set scrolloff=5
set wildmenu

"set foldmethod=indent

let mapleader = "\<space>"

"=============== Function keys ===================
map <F1> mz:%s/\s\+$//e<CR>`z           " Remove trailing whitespace
nnoremap <silent> <leader>T /\s\+$<CR>  " Show trailing whitespace
" Toggle spellcheck
" NTS: cursor on word
"   z= will suggest correction
"   zg add to dictionary
"   zw mark word as incorrect
map <F2> :setlocal spell!<CR>
map <F3> :nohls<CR>
map <F6> :!xdg-open <cfile><CR><CR>     " Open file or URL under cursor
"
"=================================================

"========== Navigation ===========================
nnoremap j gj
nnoremap k gk

" Insert mode movement
"inoremap <C-h> <C-o>h
"inoremap <C-j> <C-o>j
"inoremap <C-k> <C-o>k
"inoremap <C-l> <C-o>l

" Move lines
"nnoremap <silent> <C-k> :move-2<cr>
"nnoremap <silent> <C-j> :move+<cr>
"nnoremap <silent> <C-h> <<
"nnoremap <silent> <C-l> >>
nnoremap <silent> <CR> o<Esc>

" Navigate Windows
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

"=================================================

"=============== Clipboard =======================
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+Y
nnoremap  <leader>y  "+y
nnoremap <leader>p "+p
nnoremap <leader>P "+P

"=================================================

"=============== Misc ============================
nnoremap Y y$
nnoremap ! :!
noremap q: :q

" Jump to last char inserted
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

inoremap jj <esc>
inoremap kk <esc>

nnoremap <C-S-f> mzgg=G`zzz         " format document

map <leader><tab> gt
nnoremap <silent> <C-n> :bnext<CR>
nnoremap <silent> <C-p> :bprevious<CR>
" List and select open buffer
nmap <leader>b :ls<CR>:b<Space>

"=================================================

let g:netrw_liststyle=3

let g:ycm_global_ycm_extra_conf = "$HOME/.vim/.ycm_extra_conf.py"
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_server_python_interpreter="/usr/bin/python"

" let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"

let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
let g:gitgutter_diff_args = '-w'
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = ':'
let g:gitgutter_max_signs = 1500

set background=dark
colorscheme Tomorrow-Night-Eighties
