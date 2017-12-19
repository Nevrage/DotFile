"    .o oOOOOOOOo                                            0OOOo
"    Ob.OOOOOOOo  OOOo.      oOOo.                      .adOOOOOOO
"    OboO000000000000.OOo. .oOOOOOo.    OOOo.oOOOOOo..0000000000OO
"    OOP.oOOOOOOOOOOO 0POOOOOOOOOOOo.   `0OOOOOOOOOP,OOOOOOOOOOOB'
"    `O'OOOO'     `OOOOo"OOOOOOOOOOO` .adOOOOOOOOO"oOOO'    `OOOOo
"    .OOOO'            `OOOOOOOOOOOOOOOOOOOOOOOOOO'            `OO
"    OOOOO                 '"OOOOOOOOOOOOOOOO"`                oOO
"   oOOOOOba.                .adOOOOOOOOOOba               .adOOOOo.
"  oOOOOOOOOOOOOOba.    .adOOOOOOOOOO@^OOOOOOOba.     .adOOOOOOOOOOOO
" OOOOOOOOOOOOOOOOO.OOOOOOOOOOOOOO"`  '"OOOOOOOOOOOOO.OOOOOOOOOOOOOO
" 0OOOO0       OOOoOOOOOOOOOOOOOO`  .   '"OOOOOOOOOOOOoOO"     0OOO0
"    Y           'OOOOOOOOOOOOOO: .oOOo. :OOOOOOOOOOO?'         :`
"    :            .oO%OOOOOOOOOOo.OOOOOO.oOOOOOOOOOOOO?         .
"    .            oOOP"%OOOOOOOOoOOOOOOO?oOOOOO?OOOO"OOo
"                 '%o  OOOO"%OOOO%"%OOOOO"OOOOOO"OOO':
"                      `$"  `OOOO' `O"Y ' `OOOO'  o             .
"    .                  .     OP"          : o     .


" << STARTERS >> {{{

filetype indent plugin on
set encoding=utf-8
scriptencoding utf-8

if !exists('g:syntax_on')
  syntax enable
endif

" if has('termguicolors')
	" set termguicolors
" endif

let g:mapleader = "\<Space>"
set cursorline          " show cursorline
" }}}


" << PLUGINS >> {{{

call plug#begin('~/.local/share/nvim/plugged')

Plug 'w0rp/ale'
Plug 'scrooloose/nerdcommenter'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'wellle/targets.vim'
Plug 'rizzatti/dash.vim'
Plug 'matze/vim-move'
Plug 'isRuslan/vim-es6', { 'for': 'javascript' }
Plug 'python-mode/python-mode', { 'for': 'python' }
Plug 'BurningEther/iron.nvim'
Plug 'jalvesaq/Nvim-R', { 'for': 'r' }
Plug 'scrooloose/nerdtree'
" Plug 'majutsushi/tagbar'
" Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'

" LSP
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }

" Nvim - Completion Manager
Plug 'roxma/nvim-completion-manager'

" Completion Sources
Plug 'roxma/nvim-cm-tern',  {'for': 'javascript'}
Plug 'davidhalter/jedi', { 'for': 'python' }
Plug 'Shougo/neco-vim', { 'for': 'vim' }
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'tomlion/vim-solidity'
Plug 'gaalcaras/ncm-R'

" colorschemes
Plug 'romainl/flattened'

call plug#end()
"




" << STATUSLINE >> {{{

" Dictionary: take mode() input -> longer notation of current mode
"let g:currentmode={ 'n' : 'Normal ', 'no' : 'N·Operator Pending ', 'v' : 'Visual ', 'V' : 'V·Line ', '^V' : 'V·Block ', 's' : 'Select ', 'S': 'S·Line ', '^S' : 'S·Block ', 'i' : 'Insert ', 'R' : 'Replace ', 'Rv' : 'V·Replace ', 'c' : 'Command ', 'cv' : 'Vim Ex ', 'ce' : 'Ex ', 'r' : 'Prompt ', 'rm' : 'More ', 'r?' : 'Confirm ', '!' : 'Shell ', 't' : 'Terminal '}


" " Function: return current mode
" add abort -> function will abort soon as error detected
"function! ModeCurrent() abort
    "let l:modecurrent = mode()
    "" use get() -> fails safely, since ^V doesn't seem to register
    "" 3rd arg is used when return of mode() == 0, which is case with ^V
    "" thus, ^V fails -> returns 0 -> replaced with 'V Block'
    "let l:modelist = toupper(get(g:currentmode, l:modecurrent, 'V·Block '))
    "let l:current_status_mode = l:modelist
    "return l:current_status_mode
"endfunction



set laststatus=2
set statusline=
set statusline+=\ ::
set statusline+=\ %f
set statusline+=\ ::
set statusline+=\ %m\        " Modified
set statusline+=%=
set statusline+=\ %l,%L\ %*
set statusline+=\ %{LinterStatus()}\  " Ale Errors % Warning
set statusline+=\ [%n]\ %*

"set statusline+=%*\ %<%F

"augroup InsertColoChange
    "au!
    "autocmd InsertEnter * hi StatusLine guifg=#000000 guibg=#add8e6 gui=BOLD
    "autocmd InsertLeave * hi Statusline guifg=#FFFFFF guibg=#2a2a2a gui=ITALIC
"augroup END
" }}}


" << NETRW >> {{{

" let g:netrw_liststyle = 3
" let g:netrw_banner = 0
" let g:netrw_browse_split = 1
" let g:netrw_winsize = 25
" let g:netrw_altv = 1
" }}}


" << NERD COMMENTER >> {{{



" << NVIM - COMPLETION MANAGER >> {{{

let g:cm_complete_popup_delay = 1
let g:cm_refresh_length = [[1,2],[7,1]]
"let g:cm_matcher.case = 'smartcase'
" }}}


" << R >> {{{

"augroup R_Resize
"	autocmd!
"	autocmd VimResized * let R_rconsole_width = winwidth(0) / 2
"augroup END

"let g:Rout_more_colors=1
"let g:rout_follow_colorscheme=1
let g:R_start_libs = 'colorout,tidyverse'

nmap , <Plug>RDSendLine
vmap , <Plug>RDSendSelection
vmap ,e <Plug>RESendSelection
nmap ,p <Plug>RPrintObj
" }}}


" << BASICS >> {{{

if exists('&inccommand')
    set inccommand=split " (neovim) specific, live substitutin preview
endif

set wrap                " enable line wrapping
set history=100         " lines of history VIM remembers
set autochdir           " change working directory to current file
set shortmess=a         " get ride of annoying Enter/command prompt
set tabstop=4           " tab is four spaces
set softtabstop=4       " tab removed like spaces
set shiftwidth=4        "  number of spaces for autoindenting
set autochdir           " change current dir to file in viewed buffer
set scrolloff=5         " lines after/before cursor on scroll
set breakindent         " long lines will wrap with indentation
set showbreak=\\\\\     " wrap lines with indentation
set backspace=indent,eol,start " allow backspacing in insert mode
set autowrite           " save on buffer switch
set splitbelow
set splitright

" set autoindent
set shiftround
" set expandtab           " spaces instead of tab characters
set smarttab

"set infercase           " smarter completions that will be case aware
set ignorecase
set smartcase

set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set smartindent       " like autoindent, but smarter about C -> deprecated
"set copyindent          " copy existing indent behavior of file

set showmatch           " highlight matching [{()}]
set incsearch           " search characters as enetered
set hlsearch            " highlight matches
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set mouse=a             " enable mouse
set title               " window shows file being edited
set hidden              " buffers exist without windows
set numberwidth=4
set number              " show line number
set relativenumber      " show relative line number
set nobackup            " take care of backup files
set writebackup         " no backup files
set noswapfile          " no swap files
set lazyredraw          " redraw onlw when needed
set showmode          " what mode
set fillchars+=vert:\   " get rid of vert split '|' character
" set t_Co=256
" set wildmenu            " autocomplete for command menu
" set wildmode=list:full
" set wildignorecase
"set foldmethod=indent   " fold based on indent level
"set cmdheight=1           " height of command bar
" for cindent
" set clipboard+=unnamed  " Yanks go on clipboard instead.
" set spell spelllang=en  " enable spellchecking
" set equalalways         " windows alwasy equalized
" }}}


" << KEY MAPPINGS >> {{{


" Remove search highlighting
nnoremap <silent> <BS> :nohlsearch<CR>

" Quote words under cursor
nnoremap <leader>" viW<esc>a"<esc>gvo<esc>i"<esc>gvo<esc>3l
nnoremap <leader>' viW<esc>a'<esc>gvo<esc>i'<esc>gvo<esc>3l

" <Leader>T = Delete all Trailing space in file
nnoremap <Leader>T :%s/\s\+$//<CR>:let @/=''<CR>:nohlsearch<CR>

" fast saves
nnoremap <leader>w :w!<CR>
" exit quickly
nnoremap <leader>q :q!<CR>

" escaping various modes
inoremap jk <esc>   " remap jk to <esc>
vnoremap jk <esc>   " remap jk to <esc>
tnoremap jk <C-\><C-n><CR> " get out of terminal

" list all current buffers
nnoremap <leader>bb :ls<CR>:b<Space>
" close buffer
nnoremap <leader>bc :bd<CR>
" move to next buffer
nnoremap <leader>bn :bn<CR>
" open new tabs
nnoremap <leader>tn :tabedit<CR>

" tab to get out of auto-complete
"noremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

" Toggle ALE on/off
"nnoremap <leader>at :ALEToggle<CR>

" Count j & k as jumps -> added to jump list
"noremap <expr> k (v:count > 1 ? "m'" . v:count : '') . 'gk'
"noremap <expr> j (v:count > 1 ? "m'" . v:count : '') . 'gj'

" ignite Dash search
nmap <silent> <leader>d <Plug>DashSearch<CR>

" cursor only in active window
"augroup Cursoractive
    "au!
    "autocmd VimEnter, WinEnter, BufWinEnter * set local cursorline
    "autocmd WinLeave * setlocal nocursorline
"augroup END

" automatic resized windows
augroup on_vim_resized
    autocmd!
    autocmd VimResized * wincmd =
augroup END

" execute shell commands in buffer
nnoremap Q !!$SHELL <CR>

" move lines up | down with CTRL-j/k in normal and insert mode
" nnoremap <C-j> :m .+1<CR>==
" nnoremap <C-k> :m .-2<CR>==
" inoremap <C-j> <Esc>:m .+1<CR>==gi
" inoremap <C-k> <Esc>:m .-2<CR>==gi
" vnoremap <C-j> :m '>+1<CR>gv=gv
" vnoremap <C-k> :m '<-2<CR>gv=gv='

" init.vim editing
map <leader>- :e $HOME/.config/nvim/init.vim<CR>

" remmapings for vim-move
" let g:move_map_keys = 0
" let g:move_key_modifier = 'C'
" }}}


" << GITHUB PLUGIN >> {{{

" Keybinding for visiting the GitHub page of the plugin defined on the current line
"augroup Github_Pages
    "au!
    "autocmd FileType vim nmap <silent> gp :call OpenPluginHomepage()<CR>
"augroup END
"
"function! OpenPluginHomepage()
  "" Get line under cursor
  "let l:line = getline('.')
"
  "" Matches for instance Plug 'tpope/surround' -> tpope/surround
  "" Greedy match in order to not capture trailing comments
  "let l:plugin_name = '\w\+ \([''"]\)\(.\{-}\)\1'
  "let l:repository = matchlist(l:line, l:plugin_name)[2]
"
  "" Open the corresponding GitHub homepage with $BROWSER
  "" You need to set the BROWSER environment variable in order for this to work
  "" For MacOS, you can set the following for opening it in your default
  "" browser: 'export BROWSER=open'
  "exec '!$BROWSER https://github.com/'.l:repository
"endfunction
" }}}


" << SCHEME AESTHETICS >> {{{

" romainl gist: https://gist.github.com/romainl/379904f91fa40533175dfaec4c833f2f

function! MyHighlights() abort
    highlight Comment term=italic
    highlight clear SignColumn
endfunction

augroup MyColors
    autocmd!
    autocmd ColorScheme * call MyHighlights()
augroup END


