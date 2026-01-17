return {
  {
    "leoluz/nvim-dap-go",
    keys = {
      {
        "<leader>dt",
        function()
          require("dap-go").debug_test()
        end,
        desc = "Debug Test",
      },
    },
  },
}
