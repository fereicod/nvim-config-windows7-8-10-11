" resaltado de sintaxis para atributos y métodos
let g:polyglot_disable=['typescript', 'javascript', 'css', 'html', 'txt', 'markdown']

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
"let g:kite_supported_languages = ['*']
let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ 'coc-java'
    \ ]
" si requieres obtener otras extensiones de autocompletado visita el
" repositorio de github: https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions 

" cerrar automaticamente la barra lateral o árbol
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'
let g:loaded_python3_provider = 0

" configuración para editorconfig
let g:EditorConfig_max_line_indicator = "line"
let g:EditorConfig_preserve_formatoptions = 1

" soporte contra el error de vim-tmux
if !executable('tmux')
  let g:loaded_vimux = 1
endif

" vim-devicons
if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif

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
    " abrir terminal zsh
    " si usas Windows en ves de zsh debes poner cmd, quedanso así: execute 'vsp term://cmd'
    execute "vsp term://cmd"

    " apagar números
    execute "set nonu"
    execute "set nornu"

    " alternar insertar en entrar o salir
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    " establecer atajos dentro del búfer
    execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

    startinsert!
  endif
endfunction
