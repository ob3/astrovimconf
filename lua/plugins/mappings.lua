return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          -- neotest
          ["tq"] = { "<cmd>Neotest output-panel clear<cr>", desc = "clear output panel" },
          ["to"] = { "<cmd>Neotest output<cr>", desc = "test output" },
          ["tp"] = { "<cmd>Neotest output-panel<cr>", desc = "show output panel" },
          ["tr"] = { ":lua require('neotest').run.run()<cr>", desc = "run nearest test" },
          ["td"] = { ":lua require('neotest').run.run({strategy='dap'})<CR>", desc = "debug nearest test" },
          ["tf"] = { ":lua require('neotest').run.run(vim.fn.expand('%'))<CR>", desc = "run file test" },
          ["tl"] = { ":lua require('neotest').run.run_last()<CR>", desc = "run last test" },
          ["ta"] = { ":lua require('neotest').run.run(vim.fn.getcwd())<CR>", desc = "run all project test" },
          ["ts"] = { ":lua require('neotest').summary.toggle()<CR>", desc = "Toggle test summary" },
          ["]e"] = { ":lua require('neotest').jump_to_next_error()<CR>", desc = "next error" },
          ["[e"] = { ":lua require('neotest').jump_to_prev_error()<CR>", desc = "prev error" },

          ["tt"] = { ":lua require('coverage').toggle()<CR>", desc = "toggle coverage" },
          ["tc"] = { ":lua require('coverage').load(true)<CR>", desc = "load coverage" },
          ["tC"] = { ":lua require('coverage').clear()<CR>", desc = "clear coverage" },

          -- debug
          ["do"] = { ":lua function() require('dap').step_over()<CR>", desc = "step into" },
          ["<C-CR>"] = { ":lua function() require('dap').step_over()<CR>", desc = "step into" },

          -- bookmarks
          ["mm"] = { "<cmd>BookmarksMark<cr>", desc = "bookmark line" },

          --my custom
          ["qq"] = { "<Cmd>confirm q<CR>", desc = "close window" },

          --navigate tab
          -- ["]]"] = { ":lua require('astrocore.buffer').nav(vim.v.count1)<CR>", desc = "next buffer" },
          -- ["[["] = { ":lua require('astrocore.buffer').nav(-vim.v.count1)<CR>", desc = "prev buffer" },
          ["K"] = { ":lua require('astrocore.buffer').nav(vim.v.count1)<CR>", desc = "next buffer" },
          ["J"] = { ":lua require('astrocore.buffer').nav(-vim.v.count1)<CR>", desc = "prev buffer" },
          ["A"] = { ":lua require('astrocore.buffer').nav(-vim.v.count1)<CR>", desc = "prev buffer" },

          -- file
          ["oo"] = { ":lua require('snacks').picker.files { hidden = true, ignored = true }<CR>" },

          -- window
          ["<C-S-k>"] = { ":lua require('smart-splits').resize_up()<CR>", desc = "Resize split up" },
          ["<C-S-j>"] = { ":lua require('smart-splits').resize_down()<CR>", desc = "Resize split down" },
          ["<C-S-h>"] = { ":lua require('smart-splits').resize_left()<CR>", desc = "Resize split left" },
          ["<C-S-l>"] = { ":lua require('smart-splits').resize_right()<CR>", desc = "Resize split right" },

          -- code referrence
          ["gs"] = { "<leader>ls", desc = "list of symbol" },
          ["cc"] = { "<cmd>CopilotChat<CR>", desc = "Copilot chat" },
          ["cr"] = { "<cmd>CopilotChatReview<CR>", desc = "Copilot review" },

          -- copilot
          ["<leader>ac"] = { "<cmd>Copilot panel<CR>", desc = "Copilot panel" },
          ["<leader>aC"] = { "<cmd>Copilot clear<CR>", desc = "Copilot clear" },
          ["<leader>ag"] = { "<cmd>Copilot toggle_github_copilot<CR>", desc = "toggle github copilot" },
          ["<leader>aI"] = { "<cmd>Copilot toggle_auto_trigger<CR>", desc = "toggle copilot auto trigger" },

          -- json formatting
          ["<leader>jq"] = { ":%!jq .<CR>", desc = "Format JSON with jq" },
        },
        v = {
          -- neotest
          ["tr"] = { ":lua require('neotest').run.run()<CR>", desc = "run nearest test" },
          ["td"] = { ":lua require('neotest').run.run({strategy='dap'})<CR>", desc = "debug nearest test" },
          ["tf"] = { ":lua require('neotest').run.run(vim.fn.expand('%'))<CR>", desc = "run file test" },
          ["ta"] = { ":lua require('neotest').run.run(vim.fn.getcwd())<CR>", desc = "run all project test" },
        },
      },
    },
  },
}
