call plug#begin()
    Plug 'scrooloose/nerdTree'
    Plug 'vim-airline/vim-airline'
    Plug 'godlygeek/tabular'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf.vim', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'    
call plug#end()


set completeopt=noinsert,menuone,noselect

" ================================ Coc.nvim =================================== "
" use <tab> for trigger completion and navigate to next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

"Close preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif


" ============================================================================ "
" ===                             KEY MAPPINGS                             === "
" ============================================================================ "

" === Nerdtree shorcuts === "
"  <C-t> - Toggle NERDTree on/off
"  <leader>f - Opens current file location in NERDTree
nmap <C-t> :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>

" === coc.nvim === "
nmap <silent> <leader>dd <Plug>(coc-definition)
nmap <silent> <leader>dr <Plug>(coc-references)
nmap <silent> <leader>dj <Plug>(coc-implementation)
