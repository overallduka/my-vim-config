set runtimepath+=~/.vim_runtime
call pathogen#infect()

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim


set t_Co=256
syntax on
set background=dark
colorscheme Tomorrow-Night-Blue 
" set background=dark
" set guifont=Monaco:h11
set guifont="Source Code Pro":h11
highlight Normal guibg=black

let g:syntastic_check_on_open=1

"for autocompletion
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview


set expandtab
set shiftwidth=2
set softtabstop=2

nnoremap <cr> :noh<CR><CR>:<backspace>



"set cursorline
autocmd InsertEnter * highlight CursorLine guifg=white
autocmd InsertLeave * highlight CursorLine guifg=white

set autowrite
set number



noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 2)<CR>
noremap <silent> <c-g> :call smooth_scroll#down(&scroll*2, 0, 2)<CR>

imap qq <esc>a<Plug>snipMateNextOrTrigger
smap qq <Plug>snipMateNextOrTrigger
let mapleader = ','
let g:user_emmet_leader_key='ee'
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>at :AS<CR>
map <Leader>av :AV<CR>
map <Leader>vs :vsplit<CR>
map <Leader>nt :NERDTree<CR>
map <Leader>s :split<CR>
map <Leader>q :q<CR>
" Tabularize to align
map <Leader>a= :Tabularize /=<CR>
map <Leader>a{ :Tabularize {=<CR>
map <Leader>a: :Tabularize /:\zs<CR>

map <C-f> :CtrlPClearCache<CR>:CtrlP<CR>
map <C-g> :CtrlPClearCache<CR>

set runtimepath^=~/.vim/bundle/ctrlp.vim

syntax on 
set syn=auto 
set showmatch 
filetype on 
filetype plugin on 
filetype indent on 

let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let mapleader=','
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a, :Tabularize /,\zs<CR>
  nmap <Leader>a, :Tabularize /,\zs<CR>
endif
