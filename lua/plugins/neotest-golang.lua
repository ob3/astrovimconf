return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      { "fredrikaverpil/neotest-golang", version = "*" }, -- Installation
      { "andythigpen/nvim-coverage", version = "*" },
    },
    config = function()
      require("coverage").setup()

      local neotest_golang_opts = {
        -- testify_enabled = true,
        -- runner = "gotestsum",
        go_test_args = { "-cover", "-v" },
      } -- Specify custom configuration

      require("neotest").setup {
        adapters = {
          require "neotest-golang"(neotest_golang_opts), -- Registration
        },
      }
    end,
  },
}
