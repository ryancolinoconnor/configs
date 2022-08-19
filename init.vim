set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
colorscheme desert
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim


" Set subdirectory search with find
set path+=**
set wildmenu
set timeoutlen=250
set ttimeoutlen=250

call plug#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"" Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plug 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" Plug 'YouCompleteMe'
Plug 'flazz/vim-colorschemes'
Plug 'jalvesaq/vimcmdline'
Plug 'preservim/nerdtree'
Plug 'vim-python/python-syntax'
Plug 'neovimhaskell/haskell-vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf',{'do':{->fzf#install()}}
Plug 'neoclide/coc.nvim'

set laststatus=2
" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set relativenumber
set number

let mapleader = ','

" vimcmdline mappings
let cmdline_map_start          = '<Leader>s'
let cmdline_map_start_buffer   = '<Leader>d'
let cmdline_map_send           = '<Space>'
let cmdline_map_send_and_stay  = '<Leader><Space>'
let cmdline_map_source_fun     = '<Leader>f'
let cmdline_map_send_paragraph = '<Leader>p'
let cmdline_map_send_block     = '<Leader>b'
let cmdline_map_quit           = '<Leader>q'

" vimcmdline options
let cmdline_vsplit      = 1      " Split the window vertically
let cmdline_esc_term    = 1      " Remap <Esc> to :stopinsert in Neovim's terminal
let cmdline_in_buffer   = 1      " Start the interpreter in a Neovim's terminal
let cmdline_term_height = 15     " Initial height of interpreter window or pane
let cmdline_term_width  = 80     " Initial width of interpreter window or pane
let cmdline_tmp_dir     = '/tmp' " Temporary directory to save files
let cmdline_outhl       = 1      " Syntax highlight the output
let cmdline_auto_scroll = 1      " Keep the cursor at the end of terminal (nvim)

let cmdline_app = {}
let cmdline_app['py'] = '~/tensorflow_macos_venv/bin/python3'


colorscheme molokai

" Nerd Tree cfg
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :Rg <CR>
nnoremap <A-f> :FZF <CR>
""nnoremap tn :tabnew<Space>
nnoremap <C-Left> :wincmd h <CR>
nnoremap <C-Up> :wincmd k <CR>
"" unmap <C-Down>
nnoremap <C-Down> :wincmd j <CR>
nnoremap <C-Right> :wincmd l <CR>
""nnoremap tc :tabclose<CR>
""nnoremap tC :tabclose!<CR>
set tabstop=2 shiftwidth=2 expandtab
autocmd VimEnter * NERDTree
syntax on
autocmd VimEnter * wincmd p

" Import debug tool easily
nnoremap <C-p> oimport pdb;pdb.set_trace()<ESC>
nnoremap <C-p><C-p> Oimport pdb;pdb.set_trace()<ESC>
let g:python_highlight_all = 1
set showmatch
set ignorecase
"" set mouse=v
set hlsearch
set incsearch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set wildmode=longest,list
set cc=120
filetype plugin indent on
"" set mouse==a
filetype plugin on
set cursorline
set ttyfast
set rnu
