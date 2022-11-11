call plug#begin()

Plug 'thedenisnikulin/vim-cyberpunk'
Plug 'sheerun/vim-polyglot'
Plug 'puremourning/vimspector'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle'} |
	\ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jiangmiao/auto-pairs'
Plug 'maxboisvert/vim-simple-complete'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'github/copilot.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'alvan/vim-closetag'
Plug 'ap/vim-css-color'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'bryanmylee/vim-colorscheme-icons'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'yassinebridi/vim-purpura'
call plug#end()

set nocompatible
set termguicolors
set number relativenumber
"set foldmethod=indent

"enable 256bit colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48:2;%lu;%lu;%lum"

"self closing tags
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.tsx'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx, *.tsx'
let g:closetag_shortcut = '>'

"keybinds
map <C-s> :Files<CR>

"themes
colorscheme purpura 
let g:airline_theme="purpura"

" Start NERDTree and put the cursor back in the other window.
silent! autocmd VimEnter * NERDTree | wincmd p

"Close NERDTree on file close
silent! autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") 
			\ && b:NERDTree.isTabTree()) | q | endif
