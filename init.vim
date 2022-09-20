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
set clipboard=unnamed
let g:doce_doc_standard_python='numpy'
call plug#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"" Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
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
Plug 'kyazdani42/nvim-tree.lua'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'tpope/vim-fugitive'
Plug 'flazz/vim-colorschemes'
Plug 'folke/tokyonight.nvim', {'branch':'main'}
Plug 'jalvesaq/vimcmdline'
Plug 'terrortylor/nvim-comment'
Plug 'lewis6991/impatient.nvim'
""Plug 'preservim/nerdtree'
Plug 'vim-python/python-syntax'
Plug 'neovimhaskell/haskell-vim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'
Plug 'akinsho/bufferline.nvim', {'tag':'v2.9.1'}
Plug 'nvim-treesitter/nvim-treesitter',{'do': ':TSUpdate'}
Plug 'folke/persistence.nvim' "lets you save a session
Plug 'kkoomen/vim-doge', {'do':{->doge#install()}} "docstring
Plug 'christoomey/vim-tmux-navigator'
" Plug 'feline-nvim/feline.nvim', {'branch':'0.5-compat'}
" -Plug 'neoclide/coc.nvim'
:"" Plug 'codeape2/vim-multiple-monitors'
" All of your Plugins must be added before the following line
"Plug 'thaerkh/vim-workspace'
call plug#end()            " required
syntax on
let g:workspace_autocreate = 1
set laststatus=2
nnoremap <leader>s :ToggleWorkspace<CR>
let g:workspace_session_name = 'Session.vim'
let g:workspace_session_directory = $HOME . '/.vim/sessions/'
let g:workspace_autosave_always = 1
let g:workspace_autosave_untrailspaces = 0
let g:workspace_autosave_untrailtabs = 0
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
set number relativenumber

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
nnoremap <C-q> :lua require("persistence").load()<CR>
nnoremap <C-n> :NvimTree<CR>
""unmap <C-f>
map <C-f> :Rg <CR>
nnoremap <A-f> :FZF <CR>
""nnoremap tn :tabnew<Space>
nnoremap <A-Left> :bp <CR>
nnoremap <A-Right> :bn <CR>
nnoremap <A-,> zm <CR>
nnoremap <A-.> za <CR>
nnoremap <A-x> :bd <CR>
nnoremap <"> :split <CR>
nnoremap <%> :vsplit <CR>
nnoremap <C-Left> :TmuxNavigateLeft <CR>
nnoremap <C-Up> :TmuxNavigateUp <CR>
nnoremap <C-Down> :TmuxNavigateDown <CR>
nnoremap <C-Right> :TmuxNavigateRight <CR>
nnoremap <A-c> :CommentToggle <CR>
"" old
"" nnoremap <C-Left> :wincmd h <CR>
"" nnoremap <C-Up> :wincmd k <CR>
"" nnoremap <C-Down> :wincmd j <CR>
"" nnoremap <C-Right> :wincmd l <CR>
nnoremap <C-Alt-Down> :wincmd - <CR>
nnoremap <C-Alt-Up> :wincmd + <CR>
nnoremap <C-Alt-Right> :wincmd > <CR>
nnoremap <C-Alt-Left> :wincmd < <CR>

""nnoremap tc :tabclose<CR>
""nnoremap tC :tabclose!<CR>
set tabstop=2 shiftwidth=2 expandtab
autocmd VimEnter * NvimTreeFocus
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
"" coc nvim settings
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>

" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
let g:semshi#filetypes = ['python']
set termguicolors
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
colorscheme tokyonight-night
lua << EOF
  vim.g.loaded = 1
  vim.g.loaded_netrwPlugin = 1
  require("nvim-tree").setup{
    remove_keymaps={"<C-t>"}
     }
  require('nvim_comment').setup{}
  require 'nvim-treesitter.configs'.setup{
  	ensure_installed={"haskell","python"},
  	highlight = {

		enable=true
		}
  }
  require("bufferline").setup{}
  require("persistence").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
}
  require('lualine').setup{
  options={
  icons_enabled= true,
  theme='tokyonight',
  path=1
  }
  }
EOF
nnoremap <C-t> :NvimTreeToggle<CR>
