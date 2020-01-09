" Sample custom script using Python3
"
" Usage:
" run
" ```
" :source custom_line_length.vim
" ```
" Then call the function on a given line of text
" ```
" :call CustomLineLength()
" ```

" Make sure we run only once
if exists("loaded_custom_line_length")
  finish
endif
let loaded_custom_line_length = 1

function CustomLineLength()
python3 <<EOF

import vim

print('Length of the current line is', len(vim.current.line))
EOF
endfunction
