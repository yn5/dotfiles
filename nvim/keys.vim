" Remap leader
let mapleader = ' '
"
" Clear highlights
nmap <leader>n :noh<cr>

" https://github.com/kamykn/spelunker.vim - Correct word under cursor.
nmap <leader>s Zl

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" Mappings for inserting newline without entering insert mode
nmap <BS> O<Esc>j
nmap <CR> o<Esc>k

" Add mappings for easy pane switching"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Surrounding visual (block) selection with quotes/braces/etc.:
vmap <leader>' cXY<ESC>h2r'P
vmap <leader>" cXY<ESC>h2r"P
vmap <leader>{ cXY<ESC>r}hr{p
vmap <leader>( cXY<ESC>r)hr(p
vmap <leader>[ cXY<ESC>r]hr[p

map q <NOP> " No macro recording
map Q <NOP> " No ex mode

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" keymap to open yank list
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>
