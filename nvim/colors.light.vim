set background=light
colorscheme asmdev2

highlight CursorLine term=underline cterm=NONE guibg=NONE gui=NONE
"
" Set airline theme
let g:airline_theme='sol'

augroup vimrc
  autocmd!
  autocmd ColorScheme * highlight LineNr ctermbg=NONE
  autocmd ColorScheme * highlight VertSplit ctermbg=NONE
augroup END
