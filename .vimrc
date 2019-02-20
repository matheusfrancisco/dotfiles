call plug#begin(expand('~/.vim/plugged'))

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'wakatime/vim-wakatime'
Plug 'zivyangll/git-blame.vim'
Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim'


Plug 'mattn/emmet-vim'
Plug 'motemen/git-vim'
Plug 'kien/tabman.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'fisadev/fisa-vim-colorscheme'


Plug 'Townk/vim-autoclose'

Plug 'jeetsukumaran/vim-indentwise'
Plug 'davidhalter/jedi-vim'
Plug 'Shougo/neocomplcache.vim'

Plug 'vim-scripts/AutoComplPop'

Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets'



Plug 'nvie/vim-flake8'


" Drag visual blocks arround
Plug 'fisadev/dragvisuals.vim'

" Window chooser
Plug 't9md/vim-choosewin'

" Python and other languages code checker
Plug 'scrooloose/syntastic'


" Paint css colors with the real color
Plug 'lilydjwg/colorizer'



" Search results counter
Plug 'vim-scripts/IndexedSearch'

" XML/HTML tags navigation
Plug 'vim-scripts/matchit.zip'

" Gvim colorscheme
Plug 'vim-scripts/Wombat'

" Yank history navigation
Plug 'vim-scripts/YankRing.vim'

Plug 'tpope/vim-commentary'


Plug 'tpope/vim-fugitive'


Plug 'vim-scripts/grep.vim'
Plug 'vim-scripts/CSApprox'
Plug 'bronson/vim-trailing-whitespace'
Plug 'Raimondi/delimitMate'








"" Color
Plug 'tomasr/molokai'


" c
Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
Plug 'ludwig/split-manpage.vim'


" html
"" HTML Bundle
Plug 'hail2u/vim-css3-syntax'
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-haml'


Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leshill/vim-json'
Plug 'w0rp/ale'


Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }



Plug 'tpope/vim-markdown'
Plug 'vim-scripts/SyntaxRange'





call plug#end()

nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary
set ttyfast

set regexpengine=1
syntax enable

colorscheme molokai

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
let g:ale_completion_enabled = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=0 expandtab
set autoindent


"" Searching
" SEARCH
" Highlight search term. Use :nohl to redraw screen and disable highlight
set hlsearch

set incsearch
" Use case insensitive search, except when using capital letters

set ignorecase
set smartcase

" Make Ag search from your project root
let g:ag_working_path_mode="r"


"" NERDTree configuration

nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>


"" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>


" no vi-compatible
set nocompatible

" allow plugins by file type (required for plugins!)
filetype plugin on
filetype indent on

" tabs and spaces handling
set expandtab
" set tabstop=4
set softtabstop=4
set shiftwidth=4

" tab length exceptions on some file types
autocmd FileType html setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType htmldjango setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4

" MOVING BETWEEN FILES
" Set 'hidden' if you want to open a new file inside the same buffer without the
" need to save it first (if there's any unsaved changes).
set hidden

" always show status bar
set ls=2

" incremental search
set incsearch
" highlighted search results
set hlsearch

" syntax highlight on
syntax on

" show line numbers
set nu

" tab navigation mappings
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm 
map tt :tabnew 
map ts :tab split<CR>
map <C-S-Right> :tabn<CR>
imap <C-S-Right> <ESC>:tabn<CR>
map <C-S-Left> :tabp<CR>
imap <C-S-Left> <ESC>:tabp<CR>

" navigate windows with meta+arrows
map <M-Right> <c-w>l
map <M-Left> <c-w>h
map <M-Up> <c-w>k
map <M-Down> <c-w>j
imap <M-Right> <ESC><c-w>l
imap <M-Left> <ESC><c-w>h
imap <M-Up> <ESC><c-w>k
imap <M-Down> <ESC><c-w>j

" old autocomplete keyboard shortcut
imap <C-J> <C-X><C-O>

" Comment this line to enable autocompletion preview window
" (displays documentation related to the selected completion option)
" Disabled by default because preview makes the window flicker
set completeopt-=preview



" use 256 colors when possible
if (&term =~? 'mlterm\|xterm\|xterm-256\|screen-256') || has('nvim')
	let &t_Co = 256
    colorscheme  molokai
else
    colorscheme  molokai
endif

" colors for gvim
if has('gui_running')
    colorscheme  molokai
endif

" when scrolling, keep cursor 3 lines away from screen border
set scrolloff=3

" autocompletion of files and commands behaves like shell
" (complete only the common part, list the options that match)
set wildmode=list:longest

" BACKUP
" Disable all backup files, never used them
set nobackup
set nowritebackup
set noswapfile


" ============================================================================
" Plugins settings and mappings
" Edit them as you wish.

" Tagbar ----------------------------- 

" toggle tagbar display
map <F4> :TagbarToggle<CR>
" autofocus on tagbar open
let g:tagbar_autofocus = 1

" NERDTree ----------------------------- 

" toggle nerdtree display
map <F3> :NERDTreeToggle<CR>


" open nerdtree with the current file selected
nmap ,t :NERDTreeFind<CR>


" CtrlP ------------------------------

" file finder mapping
let g:ctrlp_map = ',e'

" tags (symbols) in current file finder mapping
nmap ,g :CtrlPBufTag<CR>

" tags (symbols) in all files finder mapping
nmap ,G :CtrlPBufTagAll<CR>

" general code finder in all files mapping
nmap ,f :CtrlPLine<CR>

" recent files finder mapping
nmap ,m :CtrlPMRUFiles<CR>


" commands finder mapping
nmap ,c :CtrlPCmdPalette<CR>


" to be able to call CtrlP with default search text
function! CtrlPWithSearchText(search_text, ctrlp_command_end)
    execute ':CtrlP' . a:ctrlp_command_end
    call feedkeys(a:search_text)
endfunction



" NeoComplCache ------------------------------

" most of them not documented because I'm not sure how they work
" (docs aren't good, had to do a lot of trial and error to make 
" it play nice)

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_ignore_case = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_enable_fuzzy_completion = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_fuzzy_completion_start_length = 1
let g:neocomplcache_auto_completion_start_length = 1
let g:neocomplcache_manual_completion_start_length = 1
let g:neocomplcache_min_keyword_length = 1
let g:neocomplcache_min_syntax_length = 1
" complete with workds from any opened file
let g:neocomplcache_same_filetype_lists = {}
let g:neocomplcache_same_filetype_lists._ = '_'

" TabMan ------------------------------

" mappings to toggle display, and to focus on it
let g:tabman_toggle = 'tl'
let g:tabman_focus  = 'tf'


" Window Chooser ------------------------------

" mapping
nmap  -  <Plug>(choosewin)
" show big letters
let g:choosewin_overlay_enable = 1


" FONT
set guifont=Monaco\ for\ Powerline:h12
set antialias


" ENCODING
set encoding=utf-8

" COMMAND LINE
" Enhanced command line completion
set wildmenu

" Complete files like a shell
set wildmode=list:longest

" SEARCH
" Vim will start searching as you type
set incsearch



" WRAP
" Stop wrapping long lines
set nowrap

" AUTORELOAD
" Automatically reload buffers when file changes
set autoread

" PLUGINS CONFIGURATIONS

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Syntastic
nnoremap <leader>st :SyntasticToggleMode<cr>

" NERDTree
nnoremap <leader>ft :NERDTreeToggle<cr>

