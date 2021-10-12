"*----------- Configuración [init.vim] 11/Junio/2021 6:43a.m COL -----------*

							"██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
							"██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
							"██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
							"██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
							"██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║ 
							"╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
									 " Configurado por >> Josué Romero Jarava               
									 " Twitter >> https://twitter.com/Josueromram

" Importo los archivos de configuración
so ~/AppData/Local/nvim/.config/config-plugins.vim
so ~/AppData/Local/nvim/.config/plugins.vim
so ~/AppData/Local/nvim/.config/shortcuts.vim

syntax enable
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8
set fenc=utf-8
set termencoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode
set nowrap
set cursorline
set scrolloff=8
set hlsearch
set incsearch
set ignorecase
set smartcase
set tabstop=1
set termguicolors
set splitbelow
set splitright
set hidden
set nobackup
set noerrorbells
set noswapfile
set nowritebackup
set updatetime=270
set shortmess+=c
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

autocmd FileType scss setl iskeyword+=@-@
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" configuración del tema o colorscheme
colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"
highlight Normal ctermbg=NONE
