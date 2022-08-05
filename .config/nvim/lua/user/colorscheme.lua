-- local colorscheme = "nord"
--
-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then
-- 	vim.notify("colorscheme " .. colorscheme .. " not found!")
-- 	return
-- end

vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha

require("catppuccin").setup()

vim.cmd [[colorscheme catppuccin]]
