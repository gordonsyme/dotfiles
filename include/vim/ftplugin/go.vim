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

RainbowParenthesesActivate
RainbowParenthesesLoadRound
RainbowParenthesesLoadSquare
RainbowParenthesesLoadBraces

let b:ale_linters = {'go': ['gopls']}

" enable gopls integration for vim-go
let b:go_def_mode='gopls'
let b:go_info_mode='gopls'

" activate Dash.app
nmap <silent> <leader>d <Plug>DashSearch


" Some wrapping bindings from paredit. Keeping braces balanced, slurping etc.
" aren't useful for Go.
  let b:any_matched_char   = '(\|)\|\[\|\]\|{\|}\|\"'
  let b:any_matched_pair   = '()\|\[\]\|{}\|\"\"'
  let b:any_opening_char   = '(\|\[\|{'
  let b:any_closing_char   = ')\|\]\|}'
  let b:any_openclose_char = '(\|)\|\[\|\]\|{\|}'
  let b:any_wsopen_char    = '\s\|(\|\[\|{'
  let b:any_wsclose_char   = '\s\|)\|\]\|}'

  call RepeatableNNoRemap(g:paredit_leader . 'w(', ':<C-U>call PareditWrap("(",")")')
  execute 'vnoremap <buffer> <silent> ' . g:paredit_leader.'w(  :<C-U>call PareditWrapSelection("(",")")<CR>'
  call RepeatableNNoRemap(g:paredit_leader . 'w"', ':<C-U>call PareditWrap('."'".'"'."','".'"'."')")
  execute 'vnoremap <buffer> <silent> ' . g:paredit_leader.'w"  :<C-U>call PareditWrapSelection('."'".'"'."','".'"'."')<CR>"
  call RepeatableNNoRemap(g:paredit_leader . 'w[', ':<C-U>call PareditWrap("[","]")')
  execute 'vnoremap <buffer> <silent> ' . g:paredit_leader.'w[  :<C-U>call PareditWrapSelection("[","]")<CR>'
  call RepeatableNNoRemap(g:paredit_leader . 'w{', ':<C-U>call PareditWrap("{","}")')
  execute 'vnoremap <buffer> <silent> ' . g:paredit_leader.'w{  :<C-U>call PareditWrapSelection("{","}")<CR>'

  call RepeatableNNoRemap(g:paredit_leader . 'O', ':<C-U>call PareditSplit()')
  call RepeatableNNoRemap(g:paredit_leader . 'J', ':<C-U>call PareditJoin()')
  call RepeatableNNoRemap(g:paredit_leader . 'W', ':<C-U>call PareditWrap("(",")")')
  execute 'vnoremap <buffer> <silent> ' . g:paredit_leader.'W  :<C-U>call PareditWrapSelection("(",")")<CR>'
  call RepeatableNNoRemap(g:paredit_leader . 'S', ':<C-U>call PareditSplice()')

nmap <C-C>, :GoTestFunc<cr>
nmap <C-C><C-K> :GoTest<cr>
