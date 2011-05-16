let g:sync = {}
let s:key = ''
let s:dir = ''

source ~/project/project.vim

function! s:Sync_file()
        w!
        let selfname=expand('%:p')
        let syntaxResult = system('/opt/php/bin/php -l ' . expand('%:p'))
        if strpart(selfname,strridx(selfname,'.')+1)=="php" && strpart(syntaxResult,0,25) != 'No syntax errors detected'
                echoerr "php syntax error"
                exec "!/opt/php/bin/php -l %"
        else
                let to_filename=g:sync[s:key] . s:dir .'/'. expand('%:t')
                let have_change=system('diff '.selfname.' '. to_filename)
                if strlen(have_change)>0 && findfile(to_filename) != ''
                        exec 'vert diffsplit ' . to_filename
                        echo '=== diff ==='
                endif
                echo system('sudo cp '.selfname.' '.to_filename)
                "exec "w! " . s:path{a:index} . expand("%:t")
        endif
endfunction

function! s:Sync_file_and_quit()
	call s:Sync_file()
	quit
endfunction

function! s:Diff_file()
	w
	exec 'vert diffsplit ' . g:sync[s:key] . s:dir .'/'. expand('%:t')
endfunction

function! s:Command()
	let path = expand('%:p:h')
	for key in keys(g:sync)
		let index = stridx(path,key)
		if(index > -1)
			let s:key = key
			let s:dir = strpart(path,strlen(key))
		endif
	endfor

	if strlen(s:key) > 0
		"echo s:key . ' : ' . s:dir
		command! W  call s:Sync_file()
		command! WQ call s:Sync_file_and_quit()
		command! DF call s:Diff_file()
	else
		command! W  echoerr 'invaild command'
		command! WC echoerr 'invaild command'
		command! DF echoerr 'invaild command'
	endif
endfunction

autocmd BufEnter *.cls  set filetype=php
autocmd BufEnter *.inc  set filetype=php
autocmd BufEnter *.html set filetype=php

autocmd BufEnter * call s:Command()
