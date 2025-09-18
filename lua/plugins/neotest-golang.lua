return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      { "fredrikaverpil/neotest-golang", version = "*" }, -- Installation
    },
    -- keys = {
    --   { "<leader>to", "<cmd>Neotest output<cr>", "show output" },
    --   { "<leader>tp", "<cmd>Neotest output-panel<cr>", "show oputpot panel" },
    -- },
    config = function()
      local neotest_golang_opts = { testify_enabled = true } -- Specify custom configuration
      require("neotest").setup {
        adapters = {
          require "neotest-golang"(neotest_golang_opts), -- Registration
        },
      }
      vim.api.nvim_set_keymap(
        "n",
        "<leader>to",
        "<cmd>Neotest output<cr>",
        { noremap = true, silent = true, desc = "test output" }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>tp",
        "<cmd>Neotest output-panel<cr>",
        { noremap = true, silent = true, desc = "show output panel" }
      )
      -- Example keybindings for Neotest
      vim.api.nvim_set_keymap(
        "n",
        "<leader>tr",
        ":lua require('neotest').run.run()<CR>",
        { noremap = true, silent = true, desc = "Run nearest test" }
      )

      vim.api.nvim_set_keymap(
        "n",
        "<leader>td",
        ":lua require('neotest').run.run({ strategy='dap'})<CR>",
        { noremap = true, silent = true, desc = "debug nearest test" }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>tf",
        ":lua require('neotest').run.run(vim.fn.expand('%'))<CR>",
        { noremap = true, silent = true, desc = "Run file tests" }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>ta",
        ":lua require('neotest').run.run(vim.fn.getcwd())<CR>",
        { noremap = true, silent = true, desc = "Run all project tests" }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>ts",
        ":lua require('neotest').summary.toggle()<CR>",
        { noremap = true, silent = true, desc = "Toggle test summary" }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>tl",
        ":lua require('neotest').run.run_last()<CR>",
        { noremap = true, silent = true, desc = "Run last test" }
      )
      vim.api.nvim_set_keymap(
        "n",
        "]e",
        ":lua require('neotest').jump_to_next_error()<CR>",
        { noremap = true, silent = true, desc = "Next test error" }
      )
      vim.api.nvim_set_keymap(
        "n",
        "[e",
        ":lua require('neotest').jump_to_prev_error()<CR>",
        { noremap = true, silent = true, desc = "Previous test error" }
      )
    end,
  },
}
