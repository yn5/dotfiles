set background=dark
colorscheme apprentice

highlight CursorLine term=underline cterm=NONE guibg=NONE gui=NONE
highlight LineNr ctermbg=NONE
highlight SignColumn ctermbg=NONE
highlight VertSplit ctermbg=NONE
highlight MatchParen cterm=none ctermbg=240

highlight link GitGutterAdd          DiffAdd
highlight link GitGutterChange       DiffChange
highlight link GitGutterDelete       DiffDelete
highlight link GitGutterChangeDelete DiffDelete

highlight DiffAdd cterm=NONE term=NONE
highlight DiffChange cterm=NONE term=NONE
highlight DiffDelete cterm=NONE term=NONE

highlight ALEErrorSign cterm=NONE term=NONE ctermfg=darkred
highlight ALEWarningSign cterm=NONE term=NONE ctermfg=214

let g:airline_theme='raven'

