" muestre siempre la columna del letrero; de lo contrario, el texto cambiaría cada vez
" aparecen / se resuelven los diagnósticos.
if has("patch-8.1.1564")
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
nmap <leader>qf  <Plug>(coc-fix-current)

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

"Asignaciones para CoCList
"Mostrar todos los diagnósticos.
"nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
"Administrar extensiones.
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
"Mostrar comandos.
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
"Buscar símbolo del documento actual.
"nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
"Buscar símbolos del espacio de trabajo.
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
"Realizar la acción predeterminada para el siguiente elemento.
"nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
"Realizar la acción predeterminada para el elemento anterior.
"nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
"Reanudar la última lista de coc.
"nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>i

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

nmap <Leader>f :CocCommand explorer<CR>
nmap <Leader>ff :CocCommand explorer --preset floating<CR>
