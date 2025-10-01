return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      {
        "nvim-treesitter/nvim-treesitter", -- Optional, but recommended
        branch = "main", -- NOTE; not the master branch!
        build = function() vim.cmd ":TSUpdate go" end,
      },
      {
        "fredrikaverpil/neotest-golang",
        -- dependencies = {
        --   "andythigpen/nvim-coverage", -- Added dependency
        -- },
        version = "v1.15.1", -- Optional, but recommended; track releases
        build = function()
          vim.system({ "go", "install", "gotest.tools/gotestsum@latest" }):wait() -- Optional, but recommended
        end,
      },
    },
    config = function()
      local config = {
        runner = "gotestsum", -- Optional, but recommended
        -- gotestsum_args = {
        --   "-v",
        --   "-race",
        --   "-count=1",
        --   "-- -coverprofile=coverage.out",
        --   "-coverpkg=./...",
        -- },
        testify_enabled = true,
      }
      require("neotest").setup {
        adapters = {
          require "neotest-golang"(config),
        },
      }
    end,
  },
}
