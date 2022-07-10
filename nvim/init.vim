"vimspector
let g:vimspector_enable_mappings = 'HUMAN'

call plug#begin()

Plug 'puremourning/vimspector'
Plug 'sheerun/vim-polyglot'
Plug 'thedenisnikulin/vim-cyberpunk'
Plug 'scrooloose/syntastic'
Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle'}
Plug 'LunarWatcher/auto-pairs'
Plug 'maxboisvert/vim-simple-complete'
Plug 'Pocco81/AutoSave.nvim'
Plug 'github/copilot.vim'
call plug#end()

set number relativenumber
set termguicolors
colorscheme cyberpunk
let g:airline_theme='cyberpunk'

"enable 256bit colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum" 
let &t_8b = "\<Esc>[48:2;%lu;%lu;%lum"

"global clipboard
set clipboard=unnamedplus

"syntax highlighting
autocmd FileType json syntax match Comment +\/\/.\+$+
