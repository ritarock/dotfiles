return {
  {
    "ritarock/shinonome",
    config = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "shinonome",
        callback = function()
          local fg = "#c8ccd4"
          -- Snacks picker
          vim.api.nvim_set_hl(0, "SnacksPickerPathHidden", { fg = fg })
          vim.api.nvim_set_hl(0, "SnacksPickerPath", { fg = fg })
          vim.api.nvim_set_hl(0, "SnacksPickerFile", { fg = fg })
          vim.api.nvim_set_hl(0, "SnacksPickerDir", { fg = "#61afef" })
          vim.api.nvim_set_hl(0, "NonText", { fg = "#6a6a6a" })
        end,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "shinonome",
    },
  },
}
