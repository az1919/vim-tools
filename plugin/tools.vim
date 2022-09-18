let s:DEBUG = v:true

if exists('g:loaded_tools') && !s:DEBUG
  finish
endif

let g:loaded_tools =  v:true

command BufNew lua require('modules').buffer.New()
command -nargs=* BufClose call tools#bufclose(<f-args>)

