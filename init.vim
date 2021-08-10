"*----------------- Configuración INIT.VIM 13/Julio/2021 6:40p.m COL ----------------*

"██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
"██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
"██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
"██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
"██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║ 
"╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
" Config By => Josué Romero Jarava               
" Twitter => https://twitter.com/Josueromram	

"*----------------- Configuración NeoVim 13/Julio/2021 6:40p.m COL -------------------*

syntax on 
set number relativenumber
set mouse=a
set encoding=utf-8
set numberwidth=1
set shiftwidth=2
set linebreak
set tabstop=2
set noerrorbells
set incsearch
set rnu
set expandtab
set autoindent
set smartindent
set expandtab
set clipboard=unnamed
set showcmd
set ruler
set ignorecase
set showmatch
set cursorline
set termguicolors
set sw=2
set cmdheight=1
set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L
set splitbelow
set splitright

let mapleader = " "

" Salir de modo insertar
imap jk <Esc>
imap <C-c> <Esc>l

" Mueve bloques de codigo en modo Visual
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv 

" Mejor Indentación
vnoremap < <gv
vnoremap > >gv

" Dividir pantalla en dos vertical scapce + sv
nnoremap <Leader>sv :sp<CR>
" Dividir pantalla en dos horizontal space + ss
nnoremap <Leader>ss : vsp<CR>

"-------------------------------Sources-------------------------------
source ~/AppData/Local/nvim/plugins/plugins.vim
source ~/AppData/Local/nvim/plugins/plug-config.vim
"--------------------------------Plugins Config--------------------------------------------

" Guardar archivo
nmap <leader>w :w <CR>

" Correr programa JavaScript => Node.js con la tecla SPACE + d en modo NORMAL
nnoremap <Leader>d :!node %<cr>

" Crear nuevo archivo 
nnoremap <F2> :tabnew 

" Abrir terminal con: ctrl+t
vnoremap <c-t> :split<CR>:terminal<CR>:resize 13<CR>
nnoremap <c-t> :split<CR>:terminal<CR>:resize 13<CR>

" Cerrar NeoVIm
nmap <C-w> :q <CR>
nmap <leader>q :q! <CR>
nmap <leader>so :source<CR>

" Reiniciar Neovim con: SPCACE + F5
nmap <F5> :source ~\AppData\Local\nvim\init.vim<CR>
vmap <F5> :source ~\AppData\Local\nvim\init.vim<CR>

" Tamaño de las pestañas o buffers
" nnoremap <silent> <left> : vertical resize -3<CR>
" nnoremap <silent> <right> : vertical resize +3<CR>
" nnoremap <silent> <up> : resize +3<CR>
" nnoremap <silent> <down> : resize -3<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gv <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Comandos de Búsqueda
nmap <leader>gs  :CocSearch
nmap <leader>fs :FZF<CR>
nmap <leader>rg :Rg<CR>

" Configuracion de Tabs
let g:indentLine_enabled = 1
let g:indentLine_char = '▏'
let g:indentLine_faster = 1
let g:indentLine_fileTypeExclude=["nerdtree"]

" Abrir Nerdtree o Árbol
nmap <Leader>e :NERDTree<CR>

" Abrir terminal cmd
nmap <Leader>t :terminal<CR>

" Buscar dos carácteres con EasyMotion
nmap <Leader>s <Plug>(easymotion-s2)

" TAB en modo normal se moverá al siguiente buffer
nnoremap <silent> <TAB> :bnext<CR>

" SHIFT-TAB va para atras 
nnoremap <silent> <S-TAB> :bprevious<CR>

" Cerrar buffer o pestaña
nmap <leader>bd :bdelete<CR>

"-- Configuración del ColoScheme --
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

" Cerrar tags Automaticamente
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.js, *.java, *.css, *.py'

" Cerrar NERDTree o Side Bar Automaticamente
let NERDTreeQuitOnOpen=1 

