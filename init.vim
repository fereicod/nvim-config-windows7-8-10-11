"*----------- Configuración [init.vim] 11/Junio/2021 6:43a.m COL -----------*

							"██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
							"██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
							"██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
							"██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
							"██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║ 
							"╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
									 " configurado por >> Josué Romero Jarava               
									 " twitter >> https://twitter.com/Josueromram

" importo los archivos de configuración
so ~/AppData/Local/nvim/config/plugins.vim
so ~/AppData/Local/nvim/config/maps.vim
so ~/AppData/Local/nvim/config/plugin-config.vim

set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
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
set cmdheight=1
set tabstop=2
set noshowmode
set splitbelow
set splitright

colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"
