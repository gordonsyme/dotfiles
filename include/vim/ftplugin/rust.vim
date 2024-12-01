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

let g:clojure_syntax_keywords = {
  \ 'clojureDefine': ["s/defn", "s/fdef"],
  \ 'clojureException': ["try+", "throw+"]
  \ }

RainbowParenthesesActivate
RainbowParenthesesLoadRound
RainbowParenthesesLoadSquare
RainbowParenthesesLoadBraces

" I like paredit actually, even for non lisp, except some stuff is annoying :/
" So copy some wrapping bindings from paredit.
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

let b:ale_rust_rustc_options = ''
let b:ale_rust_rustfmt_options = '--edition 2021'

let b:ale_fixers = {'rust': ['rustfmt', 'trim_whitespace']}
let b:ale_linters = {'rust': ['analyzer', 'cargo']}

nnoremap <C-c>, :RustTest<cr>
nnoremap <C-c><C-k> :RustTest!<cr>

nmap ]<c-d> :ALEGoToDefinition<Return>
nmap [<c-d> :ALEGoToDefinition<Return>
nmap <c-w><c-d> :ALEGoToDefinition -split<Return>
nmap <c-w>d :ALEGoToDefinition -split<Return>
