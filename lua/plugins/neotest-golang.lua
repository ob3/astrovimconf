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
        version = "v1.15.1", -- Optional, but recommended; track releases
        build = function()
          vim.system({ "go", "install", "gotest.tools/gotestsum@latest" }):wait() -- Optional, but recommended
        end,
        dependencies = {
          "andythigpen/nvim-coverage", -- Added dependency
        },
      },
    },
    config = function()
      local config = {
        -- runner = "gotestsum", -- Optional, but recommended
        testify_enabled = true,
        coverage = true,
        runner = "go",
        go_test_args = {
          "-v",
          "-race",
          "-count=1",
          "-coverprofile=" .. vim.fn.getcwd() .. "/cover.out",
        },
      }
      require("neotest").setup {
        adapters = {
          require "neotest-golang"(config),
        },
        -- log_level = vim.log.levels.ERROR,
      }
    end,
  },
}
