"Vim settings, rather than vi settings
set nocompatible

"Pathogen
call pathogen#infect()

"Syntax highlighting
syntax on

"Solarized
if !has('gui_running')
	let g:solarized_termtrans=1
endif
"Only do Solarized when on a mac
if has("unix")
	let s:uname = system("uname")
		if s:uname == "Darwin\n"
			"Being accessed from a mac
			colorscheme solarized
			set background=dark
	 endif
 endif

"NERDTree
"Shortcut NT to open NerdTree
:command NT NERDTree
"Shortcut NTC to close NERDTree
:command NTC NERDTreeToggle
"Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"Open NERDTree automatically if no file specified
autocmd vimenter * if !argc() | NERDTree | endif

"Tab Shortcutes
"Map Ctrl+N to prev tab and Ctrl+M to next tab
nnoremap <c-n> :tabp<CR>
nnoremap <c-m> :tabn<CR>

"Backspace behavior
set backspace=indent,eol,start

"Language Dependent Indenting, Filetype Detectiojn
filetype plugin indent on

"Current line indent sets newline
set autoindent
set smartindent

"Tab four spaces
set tabstop=4
set smarttab

"Show cursor line and column
set ruler

"Show line number
set number
set numberwidth=3

"Minimum 5 lines above and below cursor
set scrolljump=6
set scrolloff=5

"Search as I type and highlight matches
set incsearch
set hlsearch

"Search is case insensitive, unless there is an uppercase letter
set ignorecase
set smartcase

"Show a ruler for the current line
set cursorline


