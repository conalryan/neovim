" Refer to: https://vim.swaroopch.com/scripting.html
"
" Vim plugin for looking up popular search queries related
" to the current line
" Last Updated: 2008-11-21 Fri 08:36 AM IST
" Maintainer: www.swaroopch.com/contact/
" License: www.opensource.org/licenses/bsd-license.php

" Make sure we run only once
if exists("loaded_related")
  finish
endif
let loaded_related = 1

" Look up Yahoo Search and show results to the user
function Related()
python3 <<EOF

import vim

from yahoo.search.web import RelatedSuggestion

search = RelatedSuggestion(app_id='vimsearch', query=vim.current.line)
results = search.parse_results()

msg = 'Related popular searches are:\n'
i= 1
for result in results:
    msg += '%d. %s\n' % (i, result)
    i += 1
print(msg)

EOF
endfunction
