" Remove Black Parens
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 15


autocmd Filetype clojure RainbowParenthesesActivate
autocmd Syntax clojure RainbowParenthesesLoadRound
"autocmd Syntax * RainbowParenthesesLoadSquare
"autocmd Syntax * RainbowParenthesesLoadBraces

autocmd Filetype clojure setlocal softtabstop=2
autocmd Filetype clojure setlocal tabstop=2
autocmd Filetype clojure setlocal shiftwidth=2
