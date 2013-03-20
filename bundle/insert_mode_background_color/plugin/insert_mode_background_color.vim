" Set g:insert_mode_background_color to a Vim color to set the background to
" that color when in Insert mode.
"
" By Peter Jaros

if exists("g:insert_mode_background_color")
  augroup HighlightOnInsert
    autocmd!
    autocmd InsertEnter * execute "set background=light"
    autocmd InsertLeave * execute "set background=dark"
  augroup END
endif
