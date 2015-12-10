" Circle testing bindings
function! TestToplevel() abort
        "Eval the toplevel clojure form (a deftest) and then test-var the
        "result."
        normal! ^
        let line1 = searchpair('(','',')', 'bcrn', g:fireplace#skip)
        let line2 = searchpair('(','',')', 'rn', g:fireplace#skip)
        let expr = join(getline(line1, line2), "\n")
        let var = fireplace#session_eval(expr)
        let result = fireplace#echo_session_eval("(clojure.test/test-var " . var . ")")
        return result
endfunction

nmap cr :Connect nrepl://localhost:6005 ~/Development/circle<cr>
"nmap <c-c><c-c> :Eval<cr>
"nmap <c-c><c-k> :Require<cr>
nmap <c-c>, :<c-u>call TestToplevel()<cr>
