call plug#begin(stdpath('data'))
" telescope requirements
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Neovim Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate' "automatic closing of quotes, parenthesis, brackets, etc.
Plug 'preservim/nerdcommenter' "<leader>cc to comment line and <leader>cu to uncomment
Plug 'mbbill/undotree'
Plug 'dhruvasagar/vim-table-mode'
Plug 'chrisbra/Colorizer'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rafi/awesome-vim-colorschemes'

Plug 'ryanoasis/vim-devicons' "pretty icons
Plug 'sheerun/vim-polyglot' "syntax highlighter

Plug 'rlue/vim-barbaric'

Plug 'lervag/vimtex'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
"Plug 'vim-pandoc/vim-pandoc'
"Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'vimwiki/vimwiki'

" git
Plug 'tpope/vim-fugitive'

" lspconfig and completion
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" R
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}

call plug#end()

filetype plugin on

colorscheme nord

let mapleader = " "
let maplocalleader = "\\"

source $HOME/.config/nvim/settings/sets.vim
source $HOME/.config/nvim/settings/remaps.vim
source $HOME/.config/nvim/settings/airline.vim
source $HOME/.config/nvim/settings/completion.vim
source $HOME/.config/nvim/settings/def.vim
source $HOME/.config/nvim/settings/lsp.vim
source $HOME/.config/nvim/settings/vimtex.vim
source $HOME/.config/nvim/settings/telescope.vim
source $HOME/.config/nvim/settings/vimwiki.vim

" The IME to invoke for managing input languages (macos, fcitx, ibus, xkb-switch)
let g:barbaric_ime = 'fcitx'

"transparent background
highlight Normal guibg=none
