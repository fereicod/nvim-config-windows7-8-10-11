let mapleader = " "

" desplazamiento rápido con ctr+e y ctrl+y
nnoremap <C-k> 10 <C-e>
nnoremap <C-j> 10 <C-y>

" ajustar tamaño de los búfer o pestañas divididas
nnoremap <Leader>> 10 <C-w>>
nnoremap <Leader>< 10 <C-w><

" colocar una coma al final de línea en modo NORMAL
nnoremap <Leader>; $a;<Esc>

" ejecutar archivos JavaScript & TypeScript con Nodejs
nnoremap <Leader>d :!node %<CR>

" con ctrl+t o space+t abre la terminal
nnoremap <Leader>t :call OpenTerminal()<CR>
nnoremap <C-t> :call OpenTerminal()<CR>

" refresca la ruta posicionada
nmap <F5> :source ~/.config/nvim/init.vim<CR>

" para guardar archivos
nnoremap <Leader>w :w<CR>
" para cerrar algun búfer o pestaña
nnoremap <Leader>q :q!<CR>
" para salir rápidamente de neovim
nnoremap <Leader>x :qa!<CR>

" abrir el árbol, side bar o NERDTreeToggle
map <Leader>e :NERDTreeToggle<CR>
" abrir mecanismo de acceso rápido
map <Leader>p :Files<CR>

" navegación rápida entre buffers abiertos con [ctrl+h,l,j,k]
nnoremap <silent><Leader><C-h> :TmuxNavigateLeft<cr>
nnoremap <silent><Leader><C-k> :TmuxNavigateUp<cr>
nnoremap <silent><Leader><C-j> :TmuxNavigateDown<cr>
nnoremap <silent><Leader><C-l> :TmuxNavigateRight<cr>

" navegación rápida de métodos, funciones, etc en el archivo situado
nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)

" salir del modo INSERT con Esc, jk o ctrl+c 
imap jk <Esc>
imap <C-c> <Esc>l

" dividir pantalla en dos [vertical] con scapce+sv
nnoremap <Leader>sv :sp<CR>
" dividir pantalla en dos [horizontal] con space+ss
nnoremap <Leader>ss : vsp<CR>

" crea un nuevo archivo en la ruta posicionada
nnoremap <F4> :tabnew 

" navegación entre tabs o pestañas abiertas
nnoremap <silent> <S-TAB> :bprevious<CR>
nnoremap <silent> <TAB> :bnext<CR>
" eliminar tab
nmap <Leader>jj :bdelete<CR>

" conocer todos los tabs abiertos recientemente
map <Leader>b :Buffers<CR>

" comando de búsqueda
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>cs :CocSearch<CR>

" indentar líneas en modo VISUAL o NORMAL
vnoremap < <gv
nnoremap < <gv
vnoremap > >gv
nnoremap > >gv

" seleccionar palabras iguales del archivo con: ctrl+n

" para comentar alguna línea puedes presionar: space+c+space en modo NORMAL
" o tambien space+cl

" para agrupar una cadena con cualquier simbolo ya sea: () [] {} '' se debe
" selecionar la palabra hasta un carácter antes y presionar: space + S +'
 
" mover bloques de código seleccionado en modo VISUAL o V-LINE con f sube con g baja
xnoremap f :move '<-2<CR>gv-gv
xnoremap g :move '>+1<CR>gv-gv

" subir la posición de la línea
nnoremap n :m .-2<CR>==
" bajar de posición de la línea
nnoremap m :m .+1<CR>==

" Para camiar el caráctere que tenga una cadena de texto o cambiar el carácter que
" los contiene, por ejemplo: si tienes un 'Hello Python' al presionar cs + ' y luego
" otro oprimes el caracter que deseas y magicamente los cambiará sin necesidad de entrar
" en el modo INSERT.

" El autocompletado COC se gatillará automaticamente.
if &filetype == "javascript" || &filetype == "java"
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif

" Aplicando codeAction a la región seleccionada
" Ejemplo: [space+ccs] al párrafo actual
xmap <Leader>fd <Plug> (coc-codeaction-selected)
nmap <Leader>fd <Plug> (coc-codeaction-selected)
xmap <C-s><Plug> (coc-range-selected)
nmap <C-s><Plug> (coc-range-selected)

" copiar la ruta general del archivo abierto
nnoremap <Leader>kp :let @*=expand("%")<CR>

" utilice <F2> para mostrar la documentación en la ventana de vista previa
nnoremap <silent><F2> :call <SID>show_documentation()<CR>

" con space+cl => comentamos la línea en la que se encuentre el cursor en modo NORMAL
lua require('nvim_comment').setup({line_mapping = "<leader>cl", operator_mapping = "<leader>c"})
