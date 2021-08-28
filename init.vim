"*----------- Configuración [init.vim] 11/Junio/2021 6:43a.m COL -----------*
"
							"██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
							"██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
							"██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
							"██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
							"██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║ 
							"╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
									 " Configurado por >> Josué Romero Jarava               
									 " Twitter >> https://twitter.com/Josueromram

" Importo los archivos de configuración
so ~/AppData/Local/nvim/config/plugins.vim
so ~/AppData/Local/nvim/config/maps.vim
so ~/AppData/Local/nvim/config/plugin-config.vim

syntax on
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set hlsearch
set incsearch
set ignorecase
set smartcase
set relativenumber
set laststatus=2
set nowrap
set tabstop=2
set noshowmode
set splitbelow
set splitright
set termguicolors
set noerrorbells
set colorcolumn=120
set background=dark

" Configurarión del Tema
colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_enable_italic = 1
let g:gruvbox_hide_endofbuffer=1
highlight Comment cterm=italic
highlight Normal ctermbg=NONE
highlight ColoColumn ctermbg=0 guibg=lightgrey
highlight link JavaIdentifier NONE
