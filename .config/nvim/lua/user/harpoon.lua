local status_ok, mark = pcall(require, "harpoon.mark")
if not status_ok then
  return
end

local status_ok, ui = pcall(require, "harpoon.ui")
if not status_ok then
  return
end

-- vim.keymap.set("n", "<leader>i", mark.add_file)
-- vim.keymap.set("n", "<leader>o", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-1>", function () ui.nav_file(1) end)
vim.keymap.set("n", "<C-2>", function () ui.nav_file(2) end)
vim.keymap.set("n", "<C-3>", function () ui.nav_file(3) end)
vim.keymap.set("n", "<C-4>", function () ui.nav_file(4) end)
vim.keymap.set("n", "<C-5>", function () ui.nav_file(5) end)
vim.keymap.set("n", "<C-6>", function () ui.nav_file(6) end)
