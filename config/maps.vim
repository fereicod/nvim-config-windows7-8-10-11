let mapleader = " "

" desplazamiento rápido ctr+e, ctrl+y
nnoremap <C-j> 10 <C-e>
nnoremap <C-k> 10 <C-y>

" ejecutar archivos JavaScript & TypeScript con Nodejs
nnoremap <Leader>d :!node %<CR>

" abrir terminal cmd con [ctrl+t] así podrás ejecutar otro tipo de archivos (java, python, etc...)
vnoremap <Leader>t :split<CR> :terminal<CR>:resize 12<CR>
nnoremap <Leader>t :split<CR> :terminal<CR>:resize 12<CR>

" refresca la ruta posicionada
nmap <Leader>so :so %<CR>
nnoremap <Leader>fi :C:\Users\Administrador\AppData\Loca\nvim\projects\\

" salir del archivo, guardar archivos y cerrar neovim
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q!<CR>
nnoremap <Leader>x :qa!<CR>

" abrir el árbol, side bar o NERDTree
map <Leader>e :NERDTreeToggle<CR>
map <Leader>p :Files<CR>

" navegación rápida entre buffers abiertos con [ctrl+h,l,j,k]
nnoremap <silent><Leader><C-h> :TmuxNavigateLeft<CR>
nnoremap <silent><Leader><C-j> :TmuxNavigateDown<CR>
nnoremap <silent><Leader><C-k> :TmuxNavigateUp<CR>
nnoremap <silent><Leader><C-l> :TmuxNavigateRight<CR>

" salir del modo INSERT con Esc, jk o ctrl+c 
imap jk <Esc>
imap <C-c> <Esc>l

" dividir pantalla en dos [vertical] con scapce+sv
nnoremap <Leader>sv :sp<CR>
" dividir pantalla en dos [horizontal] con space+ss
nnoremap <Leader>ss : vsp<CR>

" crea un nuevo archivo en la ruta situada
nnoremap <F4> :tabnew 

" navegación entre tabs o pestañas abiertas
nnoremap <silent> <S-TAB> :bprevious<CR>
nnoremap <silent> <TAB> :bnext<CR>
" eliminar tab
nmap <Leader>jj :bdelete<CR>

" buffers
map <Leader>b :Buffers<CR>

" comando de búsqueda
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>cs :CocSearch<CR>

" indentar líneas en modo VISUAL o NORMAL
vnoremap < <gv
nnoremap < <gv
vnoremap > >gv
nnoremap > >gv

" seleccionar palabras iguales con: ctrl+n

" mover bloques de código en modo VISUAL o V-LINE
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv
nnoremap n :m .-2<CR>==
nnoremap m :m .+1<CR>==

" use ctrl+s para selecionar línea o todo el código
nmap <silent> <S-s> <Plug>(coc-range-select)
xmap <silent> <S-s> <Plug>(coc-range-select)

" Use ctrl+space para gatillar el autocompletado coc.
if &filetype == "javascript" || &filetype == "java"
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif

" Aplicando codeAction a la región seleccionada.
" Ejemplo: [space+aap] al párrafo actual
xmap <Leader>ca <Plug> (coc-codeaction-selected)
nmap <Leader>ca <Plug> (coc-codeaction-selected)

" cambio de nombre para símbolo
nmap <Leader>rn <Plug> (coc-renombrar)

" formatear código seleccionado
xmap <leader>f <Plug> (coc-format-selected)
nmap <leader>f <Plug> (coc-format-selected)

" navegación rápida de métodos, funciones, etc en el archivo situado.
nmap <silent>gd <Plug> (definition-of-coc)
nmap <silent>gy <Plug> (coc-type-definition)
nmap <silent>gi <Plug> (implementación de coc)
nmap <silent>gr <Plug> (coc-referencias)

" utilice <F2> para mostrar la documentación en la ventana de vista previa.
nnoremap <silent><F2> :call <SID>show_documentation()<CR>
