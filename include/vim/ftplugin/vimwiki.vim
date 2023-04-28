command! Diary VimwikiDiaryIndex

augroup vimwikigroup
  autocmd!
  autocmd BufRead,BufNewFile diary.wiki VimwikiDiaryGenerateLinks
augroup end
