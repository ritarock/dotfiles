return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              analyses = { -- 静的解析ルール
                ST1000 = false, -- package comment の警告
              },
            },
          },
        },
      },
    },
  },
}
