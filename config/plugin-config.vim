" Configurarión del Tema
colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_enable_italic=2
let g:gruvbox_hide_endofbuffer=2
highlight Comment cterm=italic
highlight Normal ctermbg=NONE
highlight ColoColumn ctermbg=0 guibg=lightgrey
highlight link JavaIdentifier NONE

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
"let g:vimtonesTurnOn=1
"let g:vimtonesPlaySound=1
"let g:vimtonesChangeVol=1
"let g:lastinputTime = str2float(reltimestr(reltime()))
