let mapleader = " "

" desplazamiento rápido ctr+e, ctrl+y
nnoremap <C-k> 10 <C-e>
nnoremap <C-j> 10 <C-y>

" cambio de tamaño dividido
nnoremap <Leader>> 10 <C-w>>
nnoremap <Leader>< 10 <C-w><

" colocar una coma al final de la línea
nnoremap <Leader>; $a;<Esc>

" ejecutar archivos JavaScript & TypeScript con Nodejs
nnoremap <Leader>d :!node %<CR>

" refresca la ruta posicionada
nmap <Leader>rr :so %<CR>
nnoremap <Leader>fi :C:\Users\Administrador\AppData\Loca\nvim\projects\

" salir del archivo, guardar archivos y cerrar neovim
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q!<CR>
nnoremap <Leader>x :qa!<CR>

" abrir el árbol, side bar o NERDTreeToggle
map <Leader>e :NERDTreeToggle<CR>
map <Leader>p :Files<CR>
map <Leader>f :fzf<CR>

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
xnoremap n :m .-2<CR>==
xnoremap m :m .+1<CR>==

" use ctrl+s para selecionar línea o todo el código
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

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
nmap <Leader>rn <Plug> (coc-rename)

" formatear código seleccionado
xmap <leader>f <Plug> (coc-format-selected)
nmap <leader>f <Plug> (coc-format-selected)

" navegación rápida de métodos, funciones, etc en el archivo situado.
nmap <silent>gd <Plug> (coc-definition)
nmap <silent>gy <Plug> (coc-type-definition)
nmap <silent>gi <Plug> (coc-implementation)
nmap <silent>gr <Plug> (coc-references)

" copiar la ruta del archivo abierto.
nnoremap <Leader>kp :let @*=expand("%")<CR>

" utilice <F2> para mostrar la documentación en la ventana de vista previa.
nnoremap <silent><F2> :call <SID>show_documentation()<CR>

" vuelva a asignar <C-f> y <C-b> para las ventanas / ventanas emergentes
" flotantes de desplazamiento.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" abrir terminal con ctrl+t.
function! OpenTerminal()
  " mover al búfer hacia la derecha
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"

  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")

  if bufType == "terminal"
    " cerrar terminal existente.
    execute "q"
  else
    " abrir terminal
    execute "vsp term://cmd"

    " apagar números
    execute "set nonu"
    execute "set nornu"

    " alternar insertar en entrar o salir.
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    " establecer atajos dentro del búfer.
    execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

    startinsert!
  endif
endfunction
nnoremap <C-t> :call OpenTerminal()<CR>
