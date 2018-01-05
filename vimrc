set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'spf13/vim-autoclose'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'tex/vimpreviewpandoc'
Plugin 'vim-scripts/applescript.vim'
Plugin 'dylanaraps/wal.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jalvesaq/Nvim-R'
Plugin 'ervandew/screen'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'airblade/vim-gitgutter'
Plugin 'airblade/vim-rooter'
Plugin 'francoiscabrol/ranger.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-accent'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-scripts/textutil.vim'
"Plugin 'vim-airline/vim-airline'
"#Plugin 'vim-airline/vim-airline-themes'
Plugin 'chrisbra/csv.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'jiangmiao/auto-pairs'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set nocompatible                  " don't need to be compatible with old vim
set relativenumber                " show relative line numbers
set number
set showmatch                     " show bracket matches
set ignorecase                    " ignore case in search
set hlsearch                      " highlight all search matches
"set cursorline                    " highlight current line
set smartcase                     " pay attention to case when caps are used
set incsearch                     " show search results as I type
set vb                            " enable visual bell (disable audio bell)
set ruler                         " show row and column in footer
set scrolloff=2                   " minimum lines above/below cursor
set laststatus=2                  " always show status bar
set list listchars=tab:»·,trail:· " show extra space characters
set nofoldenable                  " disable code folding
set clipboard=unnamed             " use the system clipboard
set wildmenu                      " enable bash style tab completion
set wildmode=list:longest,full
set mouse=a
let R_in_buffer = 0 
let R_applescript = 0 
let R_tmux_split = 1
nmap <silent> <C-D> :NERDTreeToggle<CR>
imap <silent> <C-D> :NERDTreeToggle<CR>
set omnifunc=syntaxcomplete
au BufReadPost *Dockerfile set syntax=sh
au BufReadPost *dockerfile set syntax=sh
let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
let g:pandoc#filetypes#pandoc_markdown = 0
"autocmd VimEnter * NERDTree

" put git status, column/row number, total lines, and percentage in status
set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [%l,%c]\ [%L,%p%%]
" highlight the status bar when in insert mode
if version >= 700
    au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
    au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12
endif
"" STUFF THAT NEEDS INVESTIGATING =>

" set up some custom colors
"highlight clear SignColumn
"highlight VertSplit    ctermbg=236
"highlight ColorColumn  ctermbg=237
"highlight LineNr       ctermbg=236 ctermfg=240
"highlight CursorLineNr ctermbg=236 ctermfg=240
"highlight CursorLine   ctermbg=236
"highlight StatusLineNC ctermbg=238 ctermfg=0
"highlight StatusLine   ctermbg=240 ctermfg=12
"highlight IncSearch    ctermbg=3   ctermfg=1
"highlight Search       ctermbg=1   ctermfg=3
"highlight Visual       ctermbg=3   ctermfg=0
"highlight Pmenu        ctermbg=240 ctermfg=12
"highlight PmenuSel     ctermbg=3   ctermfg=1
"highlight SpellBad     ctermbg=0   ctermfg=1
"set autoindent                    " set auto indent
"set ts=2                          " set indent to 2 spaces
set t_Co=256
colorscheme wal


let R_term = "urxvt"
"let R_term_cmd = "open -na /Applications/iTerm.app -n "
let R_nvim_wd = 1
syntax on 
set encoding=utf8
set guifont=DroidSansMono\ Nerd\ Font:h11

let vim_markdown_preview_toggle=1
let vim_markdown_preview_browser='Firefox'
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_pandoc=1

let maplocalleader = " "

