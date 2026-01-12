-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- encoding
opt.encoding = "utf-8"

-- cursor / display
opt.whichwrap = "b,s,h,l,<,>,[,],~"
opt.relativenumber = false
opt.list = true
opt.listchars = {
  tab = "» ",
  extends = "›",
  precedes = "‹",
  nbsp = "·",
  trail = "·",
}

-- file
opt.swapfile = false
opt.undofile = false
opt.backspace = { "indent", "eol", "start" }

-- indent
opt.autoindent = true

-- history
opt.history = 200
