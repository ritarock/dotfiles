-- mason の golangci-lint は go1.26 ビルドで、go.mod の go 1.27 を解析できずエラーになる。
-- ローカルの Go でビルドした ~/go/bin/golangci-lint を使わせる。
local golangci = vim.fn.expand("~/go/bin/golangci-lint")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        exclude = { "go" },
      },
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
        golangci_lint_ls = {
          init_options = {
            command = {
              golangci,
              "run",
              "--output.text.path=",
              "--output.tab.path=",
              "--output.html.path=",
              "--output.checkstyle.path=",
              "--output.junit-xml.path=",
              "--output.teamcity.path=",
              "--output.sarif.path=",
              "--show-stats=false",
              "--output.json.path=stdout",
            },
          },
        },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = function()
      require("lint").linters.golangcilint.cmd = golangci
    end,
  },
}
