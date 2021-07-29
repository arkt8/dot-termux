fu! T8_ftexec()
	if !exists('g:T8_ftexec_program')
		echo 'not configured for this filetype'
		return
	endif
endfu
map <C-e> <Esc>:call T8_ftexec(<Return>)
