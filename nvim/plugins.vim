call plug#begin()

Plug 'kamykn/spelunker.vim'

"For spelunker
Plug 'kamykn/popup-menu.nvim'

Plug 'lilydjwg/colorizer'

Plug 'chr4/nginx.vim'

Plug 'flazz/vim-colorschemes'

Plug 'scrooloose/nerdtree'
" Toggle nerdtree with F10
map <F10> :NERDTreeToggle<CR>
" Current file in nerdtree
map <F9> :NERDTreeFind<CR>

let NERDTreeShowHidden=1

Plug 'lumiliet/vim-twig'

Plug 'vim-airline/vim-airline'
" Enable a list of buffers on the top of airline's gui
let g:airline#extensions#tabline#enabled = 1
" Show just the filename in the buffer display
let g:airline#extensions#tabline#fnamemod = ':t'
" Show buffer numbers in tabline
let g:airline#extensions#tabline#buffer_nr_show = 1
" Configure how buffer numbers should be formatted
let g:airline#extensions#tabline#buffer_nr_format = '%s '

Plug 'vim-airline/vim-airline-themes'

Plug 'mileszs/ack.vim'

Plug 'tpope/vim-surround'

Plug 'scrooloose/nerdcommenter'

Plug 'airblade/vim-gitgutter'
" vim-gitgutter
nmap <Leader>ggn <Plug>GitGutterNextHunk
nmap <Leader>ggp <Plug>GitGutterPrevHunk
nmap <Leader>ggsh <Plug>GitGutterStageHunk
nmap <Leader>ggph <Plug>GitGutterPreviewHunk
nnoremap <Leader>ggt :GitGutterToggle<cr>

let g:gitgutter_sign_column_always = 0
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_enabled = 1
let g:gitgutter_highlight_lines = 0

let g:gitgutter_sign_added = '┃'
let g:gitgutter_sign_modified = '┃'
let g:gitgutter_sign_removed = '┃'
let g:gitgutter_sign_removed_first_line = '┃'
let g:gitgutter_sign_modified_removed = '┃'

Plug 'othree/yajs.vim'

Plug 'mxw/vim-jsx'

Plug 'peitalin/vim-jsx-typescript'

Plug 'posva/vim-vue'

Plug 'mustache/vim-mustache-handlebars'

Plug 'dr-chip-vim-scripts/ZoomWin'

Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}

Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'r'
set wildignore+=node_modules
set wildignore+=dist

Plug 'christoomey/vim-tmux-navigator'
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-a>h :TmuxNavigateLeft<cr>
nnoremap <silent> <C-a>j :TmuxNavigateDown<cr>
nnoremap <silent> <c-a>k :TmuxNavigateUp<cr>
nnoremap <silent> <c-a>l :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

Plug 'w0rp/ale'
let g:ale_linters = {'javascript': ['eslint'], 'typescript': ['eslint'], 'markdown': ['eslint'], 'python': ['pylint', 'flake8']}
let g:ale_fixers = {'javascript': ['eslint', 'prettier'], 'typescript': ['eslint', 'prettier'], 'markdown': ['eslint', 'prettier']}
let g:ale_linter_aliases = {'tsx': ['typescript']}
let g:ale_pattern_options = {
\   '\.vue$': {'ale_linters': ['eslint'], 'ale_fixers': ['eslint']},
\   'residualvaluecalculator.*\.js$': {'ale_linters': ['eslint'], 'ale_fixers': ['eslint']},
\   'ucc-3.*\.js$': {'ale_linters': ['eslint'], 'ale_fixers': ['eslint']},
\}
let g:ale_pattern_options_enabled = 1

let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_python_auto_pipenv = 1
let g:ale_python_pylint_change_directory = 0
let g:ale_set_highlights = 0
let g:ale_sign_error = 'x'
let g:ale_sign_warning = '!'

call plug#end()
