:let g:mapleader = ';'

let cplugs = [
\	'cplug/tnote',
\	'ftwiz'
\]
for i in cplugs | let &runtimepath.=",~/.config/nvim/".i | endfor

" A ordem dos tratores altera o viaduto!
if &diff == v:false
	runtime! plugged.vim
endif
"runtime plugged-dev.vim
"luafile ~/.config/nvim/lua/init.lua
runtime! plugconf/*.vim
runtime! custom/*.vim

"if (has("termguicolors")) | set termguicolors | endif
:set mouse=a nomousehide 

"" Window
set splitright " Vertical splits open right
set splitbelow " Vertical splits open below
set modelineexpr
set timeoutlen=3000


"" Line conf
	set autoindent
	set smartindent
	set nowrap
	set wildmenu
	set noexpandtab
	set hlsearch           " Hilight search matched
	set ruler              " Show line number and column number on status line
	set tabstop=4          " columns used on tab (default=8)
	set shiftwidth=4       " columns used on softwidth
	set softtabstop=4
	set background=dark
	set nofoldenable
	set numberwidth=2      " use <,l> to toggle display line number
	set number
	set colorcolumn=80
	set nocursorline
	"set list listchars=tab:╎\ ,trail:▓,precedes:⧼,extends:⧽ "Make tabs and endline empty visible
	"set list listchars=tab:𝆄\ ,trail:~,precedes:⧼,extends:⧽ "Make tabs and endline empty visible
	"set list listchars=tab:◌\ ,trail:▓,precedes:⧼,extends:⧽ "Make tabs and endline empty visible
	"set list listchars=tab:⍿\ ,trail:▓,precedes:⧼,extends:⧽ "Make tabs and endline empty visible
	"set list listchars=tab:⎬\ ,trail:▓,precedes:⧼,extends:⧽ "Make tabs and endline empty visible
	"set list listchars=tab:│\ ,trail:▓,precedes:⧼,extends:⧽ "Make tabs and endline empty visible
	"set list listchars=tab:┊\ ,trail:▓,precedes:⧼,extends:⧽ "Make tabs and endline empty visible
	"set list listchars=tab:⟶\ ,trail:▓,precedes:⧼,extends:⧽ "Make tabs and endline empty visible
	"set list listchars=tab:𝄄\ ,trail:▓,precedes:⧼,extends:⧽ "Make tabs and endline empty visible
	"set list listchars=tab:⇢\ ,trail:▓,precedes:⧼,extends:⧽ "Make tabs and endline empty visible
	"set list listchars=tab:⋮\ ,trail:▓,precedes:⧼,extends:⧽ "Make tabs and endline empty visible
	set list listchars=tab:\ ,trail:∘,precedes:⧼,extends:⧽ "Make tabs and endline empty visible
	"set list listchars=tab:\ ,trail:▓,precedes:⧼,extends:⧽ "Make tabs and endline empty visible

"" FILES CONF
set noswapfile nobackup
autocmd FocusLost * silent! wa " Automatically save file

"" Session & History
"set shada=%,'500,@500,:500,/100,h,\"20,n~/.local/nvim/shada
"set shadafile=~/.local/nvim/shada
set backupskip+=*.asc
set clipboard+=unnamedplus

"" VIMDIFF
if &diff
	set noreadonly

	:" Re-enable or update diff highlights
	:imap <F5> :set hl&:diffupdatei
	:map <F5> :set hl&:diffupdate

	" Disable diff highlights
	:imap <S-F5> :set hl+=A:none,C:none,D:none,T:nonei
			:map <S-F5> :set hl+=A:none,C:none,D:none,T:none

	"colorscheme gotham
endif


set incsearch ignorecase smartcase hlsearch
" Useful symbols
"      ¶  ⎇  Ξ           

" For plug vim-python/python-syntax
let g:python_version_3 = 1
let g:python_highlight_space_errors = 0 "incomoda pra dedéu
let g:python_highlight_all = 1
let g:python_slow_sync = 0


hi! link NeomakeErrorSignDefault ErrorMsg
hi! link NeomakeErrorSign ErrorMsg

map <leader>t :vs ~/.todo.md<return>


" vim: set foldenable foldmethod=indent:
