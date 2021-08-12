call plug#begin('~/AppData/Local/nvim/config plug/')

" themes
Plug 'morhetz/gruvbox'
" Plug 'shinchu/lightline-gruvbox.vim'

" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" tree o side bar
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

" tmux navegator
Plug 'christoomey/vim-tmux-navigator'

" autocomplete
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'easymotion/vim-easymotion'
Plug 'yggdroot/indentline'

call plug#end()
