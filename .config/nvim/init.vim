:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set t_Co=256
:set laststatus=2
:set noerrorbells
:set noexpandtab
:set smartindent
:set vb t_vb=
:set noshowmode
:set hidden
:set confirm
:set autowriteall
:set wildmenu wildmode=full
:set splitright
:set splitbelow
:set foldlevel=99
:set encoding=utf-8
:set wildmenu
:set nowrap



" C #includes 
set path+=./include/**
"let g:cpp_compiler = 'gcc'

" Plugin stuff
filetype on
:set rtp+=~/.config/nvim/bundle/Vundle.vim

call vundle#begin()

Plugin 'itchyny/lightline.vim'
Plugin 'preservim/nerdtree'
Plugin 'ap/vim-css-color'
Plugin 'tc50cal/vim-terminal'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tmhedberg/SimpylFold'
Plugin 'szw/vim-maximizer'
Plugin '42Paris/42header'
Plugin 'turbio/bracey.vim'
Plugin 'justinmk/vim-syntax-extra'
Plugin 'dense-analysis/ale'
Plugin 'sheerun/vim-polyglot'
Plugin 'github/copilot.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'nvim-lua/plenary.nvim'
Plugin 'nvim-treesitter/nvim-treesitter'
Plugin 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plugin 'kyazdani42/nvim-web-devicons' " If you want devicons
Plugin 'willothy/nvim-cokeline'


call vundle#end()


filetype plugin indent on

let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default': {
  \       'transparent_background': 1
  \     }
  \   }
  \ }
"colorscheme PaperColor
colorscheme gruvbox 
hi Normal guibg=NONE ctermbg=NONE

:let mapleader = " "
set t_Co=256

"automate ctags
autocmd BufWritePost *.c,*.h silent! !ctags . &

set termguicolors

nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>m :MaximizerToggle<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :wincmd h<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <silent> <leader>= :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <silent> <leader>] :resize +5<CR>
nnoremap <silent> <leader>\ :resize +5<CR>
nnoremap ff za
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-n> :tabnew<CR>
nnoremap <C-c> :tabclose<CR>
nnoremap <leader>H <C-w>H
nnoremap <leader>J <C-w>J
nnoremap <leader>K <C-w>K
nnoremap <leader>L <C-w>L
map <leader>w :w<CR>


inoremap jj <Esc>
inoremap kk <Esc>
inoremap hh <Esc>

tnoremap <leader>h <c-\><c-n><c-w>h
tnoremap <leader>j <c-\><c-n><c-w>j
tnoremap <leader>k <c-\><c-n><c-w>k
tnoremap <leader>l <c-\><c-n><c-w>l

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

let g:user42 = 'llion'
let g:mail42 = 'llion@student.42mulhouse.fr'

