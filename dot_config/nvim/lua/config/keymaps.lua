-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- normal
map("n", "j", "gj")
map("n", "k", "gk")

map("n", "n", "nzz")
map("n", "N", "Nzz")

map("n", "x", '"_x')
map("n", "s", '"_s')
map("n", "Y", "y$")

map("n", "+", "<C-a>")
map("n", "-", "<C-x>")

map({ "x", "o" }, "s", "s")
map("n", "gl", function()
  require("flash").jump()
end, { desc = "Flash jump" })

-- insert
map("i", "<C-h>", "<Left>")
map("i", "<C-l>", "<Right>")

map("i", "jj", "<ESC>", { silent = true })

-- visual
map("v", "y", "y`]", { silent = true })
map("v", "p", "p`]", { silent = true })
