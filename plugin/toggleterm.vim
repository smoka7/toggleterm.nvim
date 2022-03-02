" Plugin file for terminal.vim
" see: toggleterm/init.lua for more details
if !has('nvim-0.5')
  echoerr 'You need neovim version >= 0.5 to run this plugin'
  finish
endif

" ToggleTerm Highlights
highlight default link ToggleTermNormal Normal
highlight default link ToggleTermEndOfBuffer EndOfBuffer
highlight default link ToggleTermVertSplit VertSplit
highlight default link ToggleTermStatusLine StatusLine
highlight default link ToggleTermStatusLineNC StatusLineNC
highlight default link ToggleTermSignColumn SignColumn

"--------------------------------------------------------------------------------
" Commands
"--------------------------------------------------------------------------------
" Count is 0 by default
command! -count -complete=shellcmd -nargs=* TermExec lua require'toggleterm'.exec_command(<q-args>, <count>)
command! -count -nargs=* ToggleTerm lua require'toggleterm'.toggle_command(<q-args>, <count>)
command! -bang ToggleTermToggleAll lua require'toggleterm'.toggle_all(<q-bang>)
