" resaltado de sintaxis para atributos y métodos
let g:polyglot_disable=['javascript', 'typescript', 'java', 'python']

" Lightlane
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
"let g:kite_supported_languages = ['*']
let g:coc_global_extensions = [
    \ 'coc-tsserver'
    \ ]

" cerrar automaticamente la barra lateral o árbol
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'

" configuración de vimtones
let g:vimtonesTurnOn=1
let g:vimtonesPlaySound=1
let g:vimtonesChangeVol=1
let g:lastinputTime = str2float(reltimestr(reltime()))

" coc
autocmd FileType scss setl iskeyword+=@-@

" TextEdit puede cuasar fallos si no se establece en oculto.
set hidden

" algunos servidores tienen problemas con los archivos de respaldo, consulte el n. ° 649.
set nobackup
set nowritebackup

" dar más espacio a la línea inferior de comandos
set cmdheight=1

" tener un mejor tiempo de actualización (el valor predeterminado es 4000ms = 4s)
" genera un retrasos y mala experiencia del usuario.
set updatetime=100

" no pasar mensajes a: menús de finalización de ins.
set shortmess+=c

" mostrar siempre columnas de señales
set signcolumn=yes

" agrego el soporte de línea de estado nativo de Neovim.
" nota: consulte [:h coc-status] para las integraciones con complementos externos que
" proporcioné una línea de estado personalizada: lightline.vim.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" no sé que realiza está línea, investiga CV.
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
