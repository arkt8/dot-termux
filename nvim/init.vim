let &runtimepath.=",~/.config/nvim/termux"
:set mouse=a nomousehide 

set timeoutlen=3000
set autoindent smartindent nowrap
set wildmenu
set hlsearch           " Hilight search matched
set noexpandtab ts=2 sw=2 sts=2
set background=dark
set noswapfile nobackup
autocmd FocusLost * silent! wa " Automatically save file

"" VIMDIFF
if &diff
	set noreadonly

	:" Re-enable or update diff highlights
		:imap <F5> :set hl&:diffupdatei
		:map <F5> :set hl&:diffupdate

	" Disable diff highlights
		:imap <S-F5> :set hl+=A:none,C:none,D:none,T:nonei
				:map <S-F5> :set hl+=A:none,C:none,D:none,T:none

endif


set incsearch ignorecase smartcase hlsearch

"colorscheme term
hi! StatusLine ctermbg=0 ctermfg=8 cterm=bold
hi! NonText ctermfg=0

" mapping
nmap <C-s> <Esc>:w!<Return>
imap <C-s> <Esc>:w!<Return>i

call plug#begin('~/.vim/plugged')
Plug 'alaviss/nim.nvim'
call plug#end()
