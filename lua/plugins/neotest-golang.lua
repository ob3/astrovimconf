return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      {
        "fredrikaverpil/neotest-golang",
        version = "v1.15.1",
        dependencies = {
          "andythigpen/nvim-coverage",
        },
      },
    },
    config = function()
      local config = {
        runner = "gotestsum", -- Optional, but recommended
        testify_enabled = true,
        coverage = true,
        -- runner = "go",
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
      
      -- Auto-load coverage after running tests
      vim.api.nvim_create_autocmd("User", {
        pattern = "NeotestRunComplete",
        callback = function()
          if vim.fn.filereadable(vim.fn.getcwd() .. "/cover.out") == 1 then
            require("coverage").load(true)
          end
        end,
      })
    end,
  },
}
