let s:DEBUG = v:true

function! tools#bufclose(regex, invert = v:false, dryrun = v:false) abort

  for l:buf in range(1, bufnr('$'))
  
    if bufname(l:buf) == '' || bufname(l:buf) =~ '^\(/tmp\|term://\|NERD_tree\|__Tagbar__\)'
      continue
    endif
    
    let l:match = bufname(l:buf) =~ a:regex
    
    if a:invert
      let l:match = !l:match
    endif

    if l:match
      if a:dryrun
        echo 'bd '. bufname(l:buf)
      else
        exec 'try | bd! '. l:buf.' | catch | | endtry'
      endif
    endif
  
  endfor

endfunction

