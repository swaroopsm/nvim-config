-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function safe_del_keymap(mode, lhs)
  pcall(vim.api.nvim_del_keymap, mode, lhs)
end

-- Disable default keymaps set by lazyvim
safe_del_keymap("n", "S-h")
safe_del_keymap("n", "S-l")

-- Easy clipboard
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Copy to system clipboard" })
vim.keymap.set("n", "<leader>p", '"+gp', { desc = "Copy from system clipboard" })

-- Buffer navigation
vim.keymap.set("n", "gt", "<cmd>bnext<cr>", { desc = "Go to right buffer" })
vim.keymap.set("n", "gT", "<cmd>bprevious<cr>", { desc = "Go to previous buffer" })
