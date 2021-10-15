" desabilito el resaltado de sintaxis para esos lenguajes
"let g:polyglot_disable=['typescript', 'javascript', 'css', 'html', 'txt', 'markdown']

" configuración de la barra de estado Lightlane
let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'kitestatus': 'kite#statusline'
      \ },
      \ 'colorscheme': 'gruvbox',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}

" si utilizas el autocompletado KITE descomenta la linea 30
"let g:kite_supported_languages = ['nombre-de-los-lenguajes']
let g:coc_global_extensions = [
    \ 'coc-tsserver'
    \ ]
" si requieres obtener otras extensiones de autocompletado visita el
" repositorio en github: https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions 
let g:loaded_python3_provider=0

" cerrar automaticamente la barra lateral o árbol
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'

" configuración para UltiSnips si llegas a instalarlo. No use<tab> si usa https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsSnippetDirectories=[$HOME.'~/AppData/Local/nvim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<C-<>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
let g:UltiSnipsEditSplit="vertical"

" navegación con tmux
let g:tmux_navigator_no_mappings=1

" vim-devicons
"if exists("g:loaded_webdevicons")
"  call webdevicons#refresh()
"endif

" función para poder abrir la terminal
function! OpenTerminal()
  " mover al búfer hacia la derecha
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"

  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")

  if bufType == "terminal"
    " cerrar terminal existente
    execute "q"
  else
    " se abrirá la terminal cmd, pero si usted utiliza otra terminal, debes
    " poner el nombre del .exe o ejecutable ya sea: 'zsh, bash, iTerm', quedando la
    " línea (81) así: execute 'vsp term://zsh'
    execute "vsp term://cmd"

    " apagar números
    execute "set nonu"
    execute "set nornu"

    " alternar insertar en entrar o salir
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    " establezco atajos dentro de la terminal
    execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

    startinsert!
  endif
endfunction

"*------------------------- CONFIGURACIÓN DE COC -------------------------*
" TextEdit puede fallar si no se establece en oculto.
set hidden

" algunos servidores tienen problemas con los archivos de respaldo, consulte con #649.
set nobackup
set nowritebackup

" dar más espacio a barra inferior de comandos.
set cmdheight=1

" ter un tiempo de actualización más largo (el valor predeterminado es 4000ms  4s) genera
" retrasos y mala experiencia de usuario.
set updatetime=300

" no pases mensajes a |ins-completion-menu|
set shortmess+=c

" muestre siempre la columna del letrero; de lo contrario, el texto cambiaría cada vez
" aparecen / se resuelven los diagnósticos.
if has("nvim-0.5.0") || has("patch-8.1.1564") 
" recientemente, vim puede fusionar columna de signo y columna de número en una
  set signcolumn=number
else
  set signcolumn=yes
endif

" use la pestaña para completar el disparador con los caracteres adelante y navegue.
" NOTA: Utilice el comando ': verbose imap <tab>' para asegurarse de que la pestaña no esté asignada por
" otro complemento antes de poner esto en su configuración.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" haga que <CR> seleccione automáticamente el primer elemento de finalización y notifique a coc.nvim
" al ingresar, <cr> podría reasignarse mediante otro complemento de vim
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" utilice` [g` y `] g` para navegar por los diagnósticos
" utilice`: Coco Diagnostics` para obtener todos los diagnósticos del búfer actual en la lista de ubicaciones.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" resalte el símbolo y sus referencias cuando mantenga presionado el cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
  autocmd!
  " configure los tipos de archivo especificados en formatexpr.
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " actualizar la ayuda de la firma en el marcador de posición de salto.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" aplicar AutoFix al problema en la línea actual.
nmap <Leader>qf  <Plug>(coc-fix-current)

" asignar función y objetos de texto de clase
" NOTA: Requiere compatibilidad con 'textDocument.documentSymbol' del servidor de idiomas.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" vuelva a asignar <C-f> y <C-b> para las ventanas / ventanas emergentes flotantes de desplazamiento.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <slent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

"Agregar comando`: Format` para formatear el búfer actual.
command! -nargs=0 Format :call CocAction('format')
"Agregar`: comando Doblar` para doblar el búfer actual.
command! -nargs=? Fold :call CocAction('fold', <f-args>)
"Agregar comando`: OR` para organizar las importaciones del búfer actual.
command! -nargs=0 OR   :call CocAction('runCommand', 'editor.action.organizeImport')

" acceso rápido a las funcionalidades de CoCList
" Administrar extensiones o conocer extensiones instaladas.
nnoremap <silent><nowait> <space>coc  :<C-u>CocList extensions<CR>
" conocer y administrar snippets.
nnoremap <silent><nowait> <space>csn  :<C-u>CocList snippets<CR>

" Explorer
let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.vim',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }
