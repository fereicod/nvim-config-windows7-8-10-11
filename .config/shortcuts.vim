let mapleader = " "

" salir del modo INSERT con [Esc, jk o ctrl+c] 
imap jk <Esc>
imap <C-c> <Esc>l

" desplazamiento rápido con ctr+e y ctrl+y
nnoremap <C-k> 10 <C-e>
nnoremap <C-j> 10 <C-y>

" coloca un punto y coma al final de línea situada
nnoremap <Leader>; $a;<Esc>

" ejecutar archivos JavaScript & TypeScript con Nodejs
nnoremap <Leader>d :!node %<CR>

" con ctrl+t o space+t abre la terminal
nnoremap <Leader>t :call OpenTerminal()<CR>
nnoremap <C-t> :call OpenTerminal()<CR>

" para guardar archivos
nnoremap <Leader>w :w<CR>
" para cerrar algun búfer o pestaña
nnoremap <Leader>q :q!<CR>
" para salir rápidamente de nvim
nnoremap <Leader>x :qa!<CR>

" abrir el árbol, side bar o NERDTree
map <Leader>e :NERDTreeToggle<CR>
" encuentra archivos usando el azúcar de línea de comandos Telescope.
nnoremap <Leader>f <cmd>Telescope find_files<CR>
nnoremap <Leader>fl <cmd>Telescope live_grep<CR>
nnoremap <Leader>fb <cmd>Telescope buffers<CR>
nnoremap <Leader>fh <cmd>Telescope help_tags<CR>
nnoremap <Leader>fg <cmd>Telescope git_status<CR>
nnoremap <Leader>fc <cmd>Telescope command_history<CR>

" navegación rápida entre buffers abiertos
nnoremap <silent><Leader><C-h> :TmuxNavigateLeft<CR>
nnoremap <silent><Leader><C-j> :TmuxNavigateDown<CR>
nnoremap <silent><Leader><C-k> :TmuxNavigateUp<CR>
nnoremap <silent><Leader><C-l> :TmuxNavigateRight<CR>

" flujo instantaneo con COC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" dividir pantalla en dos [horizontal] con space+hh
nnoremap <Leader>hh :sp<CR>
" dividir pantalla en dos [vertical] con space+vv
nnoremap <Leader>vv :vsp<CR>

" eliminar todos los espacios vacíos que hayan en el archivo
nnoremap <F3> :%s#\s\+$##<CR>
" crea un nuevo archivo en la ruta posicionada
nnoremap <F4> :tabnew 
" actualiza configuración de neovim
nmap <F5> :source ~/AppData/Local/nvim/init.vim<CR>
" ajustar tamaño del búfer o pestaña dividida
nnoremap <F6> 25 <C-w><
nnoremap <F7> 25 <C-w>>

" navegación entre tabs o pestañas abiertas
nnoremap <silent><S-TAB> :bprevious<CR>
nnoremap <silent><TAB> :bnext<CR>
" eliminar tab
nmap <Leader>jj :bdelete<CR>

" conocer todos los tabs abiertos recientemente
map <Leader>b :Buffers<CR>

" atajo de búsqueda con easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" indentar líneas y bloques en cualquier modo VISUAL
vnoremap < <gv
vnoremap > >gv

" seleccionar palabras iguales del archivo con: ctrl+n

" para agrupar una cadena de texto con cualquier simbolo ya sea: () [] {} '' ("") debes
" selecionar la palabra hasta un carácter antes y presionar: space+S+el-simbolo

" mover bloques de código seleccionado en modo VISUAL, V-LINE o V-BLOCK con 'f' subes el código y con 'g' lo bajas.
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" subir la posición de la línea
nnoremap n :m .-2<CR>==
" bajar de posición de la línea
nnoremap m :m .+1<CR>==

" vuelva a asignar el marco a las minúsculas para que no agregue un espacio vacío
xmap s <Plug>VSurround

" realizar diagnóstico
nnoremap <Leader> P: let @ * = expand ("%") <CR>

" Para camiar el caráctere que tenga una cadena de texto o cambiar el carácter que
" los contiene, por ejemplo: si tienes un 'Hello Python' al presionar cs+el-simbol, la cadena de caracteres
" magicamente se cambiarán sin necesidad de entrar en el modo INSERT.

" Para gatillar el autocompletado de COC presione ctrl+space, aunque automaticamente se gatilla.
" if &filetype == 'javascript' || &filetype == 'java'
  " inoremap <silent><expr> <c-space> coc#refresh()
" else
  inoremap <silent><expr> <c-space> coc#refresh()
" endif

" selecionar bloques de códigos.
nmap <silent><C-s> <Plug>(coc-range-select)
xmap <silent><C-s> <Plug>(coc-range-select)

" copiar ruta general del archivo posicionado
nnoremap <Leader>kp :let @*=expand("%")<CR>

" con space+cl, comentamos la línea en la que se encuentre el cursor en modo NORMAL
lua require('nvim_comment').setup({line_mapping = "<leader>cl", operator_mapping = "<leader>c"})
