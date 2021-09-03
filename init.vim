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

" TextEdit puede cuasar fallos si no se establece en oculto.
set hidden

" algunos servidores tienen problemas con los archivos de respaldo, consulte el #649.
set nobackup
set nowritebackup

" dar más espacio a la línea inferior de comandos
set cmdheight=1

" tener un mejor tiempo de actualización (el valor predeterminado es 4000ms = 4s)
" genera un retrasos y mala experiencia del usuario.
set updatetime=80

" no pasar mensajes a: menús de finalización de ins.
set shortmess+=c

" agrego el soporte de línea de estado nativo de Neovim.
" nota: consulte [:h coc-status] para las integraciones con complementos externos que
" proporcioné una línea de estado personalizada: lightline.vim.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" autocompletado Coc
autocmd FileType scss setl iskeyword+=@-@

" no sé que realiza está línea, investiga CV.
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
