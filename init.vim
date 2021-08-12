"*--------------- Configuración [INIT.VIM] 13/Julio/2021 6:40a.m COL ---------------*

                "██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
                "██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
                "██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
                "██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
                "██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║ 
                "╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
                " Config By => Josué Romero Jarava               
                " Twitter => https://twitter.com/Josueromram	

syntax enable
set number
set relativenumber
set mouse=a
set clipboard=unnamed
set encoding=utf-8
set showcmd
set ruler
set cursorline
set showmatch
set sw=2
set laststatus=2
set ignorecase
set noshowmode
set smartindent
set expandtab
set autoindent
set termguicolors

" otros
set shiftwidth=1
set numberwidth=1
set tabstop=2
set expandtab
set splitbelow
set splitright

let mapleader = " "

" Salir del modo INSERTAR
imap jk <Esc>
imap <C-c> <Esc>l

" Mover bloques de códigos en modo VISUAL
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv 

" Indentar líneas
vnoremap < <gv
vnoremap > >gv

" Dividir pantalla en dos [vertical] scapce + sv
nnoremap <Leader>sv :sp<CR>
" Dividir pantalla en dos [horizontal] space + ss
nnoremap <Leader>ss : vsp<CR>

"-------------------------------Sources-------------------------------
source ~/AppData/Local/nvim/plugins/plugins.vim
source ~/AppData/Local/nvim/plugins/plug-config.vim
"--------------------------------Plugins Config--------------------------------------------

" Guardar archivo
nmap <leader>w :w <CR>

" Correr programa JavaScript con Node.js: space + d en modo NORMAL
nnoremap <Leader>d :!node %<cr>

" Crea un nuevo archivo en la ruta situada
nnoremap <F2> :tabnew 

" Cerrar Neovim
nmap <C-w> :q <CR>
nmap <leader>q :q! <CR>
nmap <leader>so :source<CR>

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
"nmap <leader>fs :FZF<CR>
"nmap <leader>rg :Rg<CR>

" Configuracion de Tabs
let g:indentLine_enabled = 1
let g:indentLine_char = '▏'
let g:indentLine_faster = 1
let g:indentLine_fileTypeExclude=["nerdtree"]

" Abrir Nerdtree o Side Bar o Árbol
nmap <Leader>e :NERDTreeToggle<CR>

" Abrir Terminal cmd
nmap <Leader>t :terminal<CR>

" Buscar dos carácteres con EasyMotion
nmap <Leader>s <Plug>(easymotion-s2)

" Eliminar buffer tabs o pestaña
nnoremap <Leader>jj :bdelete<CR>
" TAB en modo normal se moverá al siguiente buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB va para atras 
nnoremap <silent> <S-TAB> :bprevious<CR>

"-- Configuración del ColorScheme --
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

" Cerrar tags Automaticamente
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.js, *.java, *.css, *.py'

" Cerrar NERDTree o Side Bar Automaticamente
let NERDTreeQuitOnOpen=1 


