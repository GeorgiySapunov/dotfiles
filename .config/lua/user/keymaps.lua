local opts = { noremap = true, silent = true }
local map_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

keymap("n", "<leader>-", ":vertical resize -5<CR>", opts)
keymap("n", "<leader>+", ":vertical resize +5<CR>", opts)
keymap("n", "<leader>rp", ":resize 100<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- greatest remaps ever
keymap("v", "<leader>p", '"_dP', opts)
keymap("v", "<leader>y", '"+y', opts)
keymap("n", "<leader>y", '"+y', opts)
keymap("n", "<leader>Y", 'gg"+yG', opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<leader>h", "<C-\\><C-N><C-w>h", map_opts)
keymap("t", "<leader>j", "<C-\\><C-N><C-w>j", map_opts)
keymap("t", "<leader>k", "<C-\\><C-N><C-w>k", map_opts)
keymap("t", "<leader>l", "<C-\\><C-N><C-w>l", map_opts)

-- Nvimtree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>f", ":Format<cr>", opts)

---- Quickfix list
--keymap("n", "C-k", ':cnext<CR>zz', opts)
--keymap("n", "C-j", 'cprev<CR>zz', opts)
--keymap("n", "<leader>k", ":lnext<CR>zz", opts)
--keymap("n", "<leader>j", ":lprev<CR>zz", opts)
--keymap("n", "C-q", ":call ToggleQFList(1)<CR>", opts)
--keymap("n", "<leader>q", ":call ToggleQFList(0)<CR>", opts)

-- UndoTree
keymap("n", "<leader>u", ":UndotreeToggle<CR>", opts)

--keymap("i", "C-c", "<esc>", opts)

-- Git merge
keymap("n", "<leader>ga", ":Git fetch", opts) --all<CR>
keymap("n", "<leader>grum", ":Git rebase upstream/master<CR>", opts)
keymap("n", "<leader>grom", ":Git rebase origin/master<CR>", opts)

keymap("n", "<leader>gh", ":diffget //3<CR>", map_opts)
keymap("n", "<leader>gu", ":diffget //2<CR>", map_opts)
keymap("n", "<leader>gs", ":G<CR>", map_opts)

-- Markdown
keymap("n", "<leader>md", "<Plug>MarkdownPreviewToggle", map_opts)

-- Clears highlights
keymap("n", "//", ":noh<CR>", opts)

-- Update changes into current buffer
keymap("n", "<leader>sv", ":source $MYVIMRC<CR>", opts)

-- Enable or disable line wrapping in current buffer
keymap("n", "<localleader>w", ":set wrap!<CR>", opts)

-- Python
keymap("n", "<f5>", ":w <bar> :!python3 % <CR>", opts)
keymap("n", "<f6>", ":lua _PYTHON_TOGGLE()<CR>", opts)

-- Telescope
keymap("n", "<leader>pg", "<cmd>lua require('telescope.builtin').git_files()<CR>", opts)
keymap("n", "<leader>lg", "<cmd>Telescope live_grep<cr>", opts)
keymap(
	"n",
	"<leader>ps",
	"<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep For > ')})<CR>",
	opts
)
keymap("n", "<leader>pf", "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)

--keymap("n", "<leader>pw", "<cmd>lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>", opts)
keymap("n", "<leader>pb", "<cmd>lua require('telescope.builtin').buffers()<CR>", opts)
keymap("n", "<leader>vh", "<cmd>lua require('telescope.builtin').help_tags()<CR>", opts)
