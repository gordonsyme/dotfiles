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

setlocal softtabstop=2
setlocal tabstop=2
setlocal shiftwidth=2

" activate Dash.app
nmap <silent> <leader>d <Plug>DashSearch

let b:ale_linters = {'clojure': ['clj-kondo']}

" Circle testing bindings
function! TestToplevel() abort
        "Eval the toplevel clojure form (a deftest) and then test-var the
        "result."
        normal! ^
        let line1 = searchpair('(','',')', 'bcrn', g:fireplace#skip)
        let line2 = searchpair('(','',')', 'rn', g:fireplace#skip)
        let expr = join(getline(line1, line2), "\n")
        let var = fireplace#session_eval(expr)
        let result = fireplace#echo_session_eval("(kaocha.repl/run " . var . ")")
        return result
endfunction

function! TestToplevelCT() abort
        "Eval the toplevel clojure form and clojure.test/test-var the result.
        normal! ^
        let line1 = searchpair('(','',')', 'bcrn', g:fireplace#skip)
        let line2 = searchpair('(','',')', 'rn', g:fireplace#skip)
        let expr = join(getline(line1, line2), "\n")
        let var = fireplace#session_eval(expr)
        let result = fireplace#echo_session_eval("(clojure.test/test-var " . var . ")")
        return result
endfunction

nmap cr :FireplaceConnect nrepl://localhost:6005 ~/Development/circle<cr>
nmap <c-c>, :<c-u>call TestToplevel()<cr>
nmap <c-c><c-k> :Eval (kaocha.repl/run *ns*)<cr>
nmap <leader><c-c>, :<c-u>call TestToplevelCT()<cr>
nmap <leader><c-c><c-k> :Eval (clojure.test/test-ns *ns*)<cr>

" Standard formatexpr setting prevents gq from wrapping strings, which is
" annoying for docstrings.
set formatexpr&
