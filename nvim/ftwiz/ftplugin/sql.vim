function! SQLiteRunSelection() range
	let l:x=''
	redir => l:x
	sil! execute("'<,'>w ! sqlite3")
	redir END
	vsplit +enew
	let l:x=join(split(l:x),"\n")
	put =l:x

	:setlocal buftype=nofile bufhidden=hide noswapfile nobuflisted nowrap
endfunction

function! SQLiteRunScript()
	! sqlite3 < %
endfunction

function! SQLiteConsoleSetup()
	vnoremap <M-x> :call SQLiteRunSelection()<Return>
	inoremap <M-x> <Esc>:w<Return>:call SQLiteRunScript()<Return>
	noremap <M-x> <Esc>:w<Return>:call SQLiteRunScript()<Return>
endfunction

augroup sqlitecli
	au!
	au BufRead,BufEnter,BufNewFile,VimEnter *.sql :call SQLiteConsoleSetup()
"	au FileType sql :call s:setup()
augroup END
call SQLiteConsoleSetup()
