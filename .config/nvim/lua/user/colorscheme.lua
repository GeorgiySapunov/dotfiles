vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
local colorscheme = "catppuccin"
-- require("catppuccin").setup()

local status_ok, _ = pcall(vim.cmd.colorscheme, colorscheme)
if not status_ok then
  return
end
