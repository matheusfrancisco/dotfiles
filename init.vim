call plug#begin(expand('~/.vim/plugged'))

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'lervag/vimtex'
Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dracula/vim'
Plug 'mattn/emmet-vim'
Plug 'motemen/git-vim'
Plug 'kien/tabman.vim'
Plug 'fisadev/fisa-vim-colorscheme'
Plug 'jeetsukumaran/vim-indentwise'
Plug 'tomtom/tlib_vim'

Plug 'honza/vim-snippets'
Plug 'nvie/vim-flake8'

Plug 't9md/vim-choosewin'
Plug 'scrooloose/syntastic'

Plug 'lilydjwg/colorizer'
Plug 'vim-scripts/matchit.zip'
Plug 'tpope/vim-commentary'

Plug 'tpope/vim-fugitive'
Plug 'vim-test/vim-test'
Plug 'vim-scripts/grep.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'Raimondi/delimitMate'
Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
Plug 'tpope/vim-haml'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

Plug 'leshill/vim-json'
Plug 'w0rp/ale'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'vim-scripts/SyntaxRange'

"Clojure plugin"

Plug 'liuchengxu/vim-better-default'
Plug 'easymotion/vim-easymotion'
Plug 'guns/vim-sexp'
Plug 'Shougo/deoplete.nvim'

Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'jiangmiao/auto-pairs', { 'tag': 'v2.0.0' }
Plug 'Olical/conjure', { 'tag': 'v2.1.2', 'do': 'bin/compile' }

" typescript
Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'


Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'christoomey/vim-tmux-navigator'

Plug 'tpope/vim-dispatch'

Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-dispatch'
Plug 'overcache/NeoSolarized'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-airline/vim-airline-themes'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'

call plug#end()


"" Encoding
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary


"" Map leader to ,
let mapleader=" "
let maplocalleader=","

autocmd Filetype * setlocal ts=2 sw=2 sts=2 expandtab

let g:vimtex_compiler_engine='lualatex'
:verbose set shiftwidth=2
:verbose set tabstop=2
:verbose set softtabstop=2
:verbose set expandtab
:verbose set smartindent
:verbose set autoindent

set regexpengine=1

" Enable syntax
syntax enable
syntax on

" Enable CursorLine
set cursorline

let &t_Co=256
set background=dark
colorscheme dracula
color dracula 
"set background=light
"colorscheme  solarized8
"color  solarized8

let g:fzf_preview_window = 'right:60%'
let g:ycm_path_to_python_interpreter = '/home/evohc/.pyenv/shims/python'

""au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
""autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
" Markdown
au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,README.md  setf markdown

" Clojure Configuration

"
set completeopt-=preview

let g:ale_linters = {
      \ 'clojure': ['clj-kondo', 'joker']
      \}
"End Clojure linters"
"
"
" vim-test mappings
map <silent> <leader>tn :TestNearest<CR>
map <silent> <leader>TN :TestFile<CR>
map <silent> <leader>ts :TestSuite<CR>
map <silent> <leader>tl :TestLast<CR>
map <silent> <leader>g :TestVisit<CR>

let g:test#javascript#mocha#file_pattern = '\v.*\.test\.(js|ts|tsx)$'
function! TypeScriptTransform(cmd) abort
  return substitute(a:cmd, '\v(.*)mocha', 'NODE_ENV=${NODE_ENV:=test} \1mocha', '')
endfunction
let g:test#custom_transformations = {'typescript': function('TypeScriptTransform')}
let g:test#transformation = 'typescript'
let test#strategy = "dispatch"

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
let g:ale_completion_enabled = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

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

" no vi-compatible
set nocompatible

" allow plugins by file type (required for plugins!)
filetype plugin on
filetype indent on

" MOVING BETWEEN FILES
" Set 'hidden' if you want to open a new file inside the same buffer without the
" need to save it first (if there's any unsaved changes).
set hidden

" always show status bar
set ls=2


" show line numbers
set nu

"Normal mappings {{
nnoremap <leader><tab> <c-^>
nnoremap <leader>q :q<cr>
nnoremap <leader>n :nohl<cr>
nnoremap <leader>w :w<cr>

nnoremap <leader>mdon :MarkdownPreview<cr>
nnoremap <leader>mdoff :MarkdownPreviewStop<cr>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>cd :cd expand('%:h')<cr>
nnoremap <m-h> <c-w>h
nnoremap <m-j> <c-w>j
nnoremap <m-k> <c-w>k
nnoremap <m-l> <c-w>l
"}}
"

""Insert mode Maps

inoremap jj <esc>

""tab navigation mappings
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm 
map tt :tabnew 
map ts :tab split<CR>

" navigate windows with meta+arrows
imap <M-Right> <ESC><c-w>l
imap <M-Left> <ESC><c-w>h
imap <M-Up> <ESC><c-w>k
imap <M-Down> <ESC><c-w>j


" Comment this line to enable autocompletion preview window
" (displays documentation related to the selected completion option)
" Disabled by default because preview makes the window flicker
set completeopt-=preview



" when scrolling, keep cursor 3 lines away from screen border
set scrolloff=3


" BACKUP
" Disable all backup files, never used them
set nobackup
set nowritebackup
set noswapfile


" ============================================================================
" Plugins settings and mappings
" Edit them as you wish.

" Tagbar -----------------------------
" autofocus on tagbar open
let g:tagbar_autofocus = 1

" NERDTree -----------------------------

" toggle nerdtree display
nnoremap <F3> :NERDTreeToggle<CR>

" NERDTree
nnoremap <leader>ft :NERDTreeToggle<cr>


"
"
""function! CtrlPWithSearchText(search_text, ctrlp_command_end)
""    execute ':CtrlP' . a:ctrlp_command_end
""    call feedkeys(a:search_text)
""endfunction
""


" NeoComplCache ------------------------------

" most of them not documented because I'm not sure how they work
" (docs aren't good, had to do a lot of trial and error to make 
" it play nice)

"let g:neocomplcache_enable_at_startup = 1
"let g:neocomplcache_enable_ignore_case = 1
"let g:neocomplcache_enable_smart_case = 1
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_enable_fuzzy_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 0
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_fuzzy_completion_start_length = 1
"let g:neocomplcache_auto_completion_start_length = 0
"let g:neocomplcache_manual_completion_start_length = 1
"let g:neocomplcache_min_keyword_length = 1
"let g:neocomplcache_min_syntax_length = 1
"" complete with workds from any opened file
"let g:neocomplcache_same_filetype_lists = {}
"let g:neocomplcache_same_filetype_lists._ = '_'

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

" ENCODING
set encoding=utf-8
" COMMAND LINE
" Enhanced command line completion
set wildmenu

set showbreak=↪\ 
set list
set listchars=tab:→\ ,trail:•,nbsp:%,eol:$,
set sidescrolloff=5
set cursorcolumn

" Complete files like a shell
"set wildmode=list:longest

" WRAP
" Stop wrapping long lines
set nowrap
" AUTORELOAD
" Automatically reload buffers when file changes
set autoread


"" FZF {{{

nnoremap <leader>ag :Ag<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>gf :GitFiles<cr>
nnoremap <leader>bl :BLines<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>t :BTags<cr>
nnoremap <leader>cc :Commands<cr>
nnoremap <leader>y :Filetypes<cr>
nnoremap <leader>h :History<cr>
nnoremap <leader>mm :Maps<cr>

"nnoremap <leader>tt :Tags<cr>
imap <c-f> <plug>(fzf-complete-file-ag)
imap <c-l> <plug>(fzf-complete-line)
imap <c-x><c-k> <plug>(fzf-complete-word)

let g:fzf_tags_command = 'ctags -R --exclude=.git --exclude=node_modules --exclude=dist --exclude=docs --exclude="*.json"'
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
" }}}

" ALE {{{
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 0
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 1
let g:ale_sign_error = 'x'
let g:ale_sign_warning = '-'
let b:ale_fixers = {'typescript': ['prettier', 'tslint']}
" }}}


" Vimscript {{{
augroup VimFilesGroup
  autocmd!
  autocmd BufWritePost $MYVIMRC source % | echom "Reloaded " . expand("%") | redraw
" }}}
"
"
"" Buffer {{{
augroup BufferSettings
  autocmd!
  autocmd BufEnter * setlocal cursorline
        \| highlight ALEWarningSign ctermbg=0 ctermfg=16
        \| highlight ALEErrorSign ctermbg=0 ctermfg=1
        \| highlight LineNr ctermbg=002635 ctermfg=59
  autocmd BufLeave * setlocal nocursorline
augroup END
" }}}
"
"
""augroup SeriouslyNoInsertArrows
""  autocmd!
""  autocmd InsertEnter * inoremap <Up> <nop>
""  autocmd InsertEnter * inoremap <Down> <nop>
""augroup END
""
"Dissable arrows key"
nnorema <up> <nop>
nnorema  <down> <nop>
nnorema  <left> <nop>
nnorema  <right> <nop>
