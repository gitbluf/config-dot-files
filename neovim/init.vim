
" PLUGIN FN BEGIN
call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdcommenter'
Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'
Plug 'tmhedberg/SimpylFold'
Plug 'sheerun/vim-polyglot'
Plug 'mhartington/oceanic-next'
Plug 'saltstack/salt-vim'
Plug 'stephpy/vim-yaml'
Plug 'glench/vim-jinja2-syntax'
Plug 'xuyuanp/nerdtree-git-plugin'

call plug#end()
" PLUGIN FN END

colorscheme OceanicNext

set termguicolors
hi LineNr ctermbg=NONE guibg=NONE
"gruvbox 

if (has("termguicolors"))
  set termguicolors
endif

" AUTOCMD/calls
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
call neomake#configure#automake('nrwi', 500)
hi HighlightedyankRegion cterm=reverse gui=reverse
let g:highlightedyank_highlight_duration = 2000


" LETS
let g:airline_theme='oceanicnext'
let g:palenight_terminal_italics=1
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
let g:space_vim_dark_background = 234
let g:deoplete#enable_at_startup = 1
" Enable alignment
let g:neoformat_basic_format_align = 1
" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1
" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1
" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0
" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"
" using pylint for code linting
let g:neomake_python_enabled_makers = ['pylint']

" SETS
syntax enable
set number! relativenumber!
set splitbelow
set background=dark " use dark mode
set autoread

map <C-b> :NERDTreeToggle<CR>

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
