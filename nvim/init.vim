
@checkNone
" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

"Load plugins here (pathogen or vundle)
source $HOME/.config/nvim/plugins.vim

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Pick a leader key
let mapleader = ","

" Search down into subfolders, tab-completion
set path+=**

" Set Python Path
let g:python3_host_prog = '/usr/local/bin/python3'

" Security
set modelines=0

" Show line numbers
set relativenumber
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=88
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=2
set softtabstop=4
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Quick window switching
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-x> <C-w>x

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>
inoremap <CAPSLOCK> <ESC>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
" Use your leader key + l to toggle on/off
set listchars=tab:▸\ ,eol:¬
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1

" Function Vertical Split Buffer
function VerticalSplitBuffer(buffer)
  execute "vert belowright sb" a:buffer
endfunction
command -nargs=1 Vbuffer call VerticalSplitBuffer(<f-args>)
