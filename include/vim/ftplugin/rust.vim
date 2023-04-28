let g:ale_rust_rustc_options = ''

let b:ale_fixers = ['rustfmt']
"let b:ale_linters = ['cargo', 'rustc', 'rls']
let b:ale_linters = ['cargo', 'rls']

nnoremap <C-c><C-k> :RustTest<cr>
set makeprg=cargo\ --build\ $*
