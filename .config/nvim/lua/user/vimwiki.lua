-- vimwiki - Personal Wiki for Vim
-- https://github.com/vimwiki/vimwiki

-- vimwiki with markdown support
vim.cmd([[
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
]])
-- helppage -> :h vimwiki-syntax
