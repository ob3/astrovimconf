return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          -- neotest
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

          -- bookmarks
          ["mm"] = { "<cmd>BookmarksMark<cr>", desc = "bookmark line" },

          --my custom
          ["qq"] = { "<Cmd>confirm q<CR>", desc = "close window" },

          -- navigation

          --navigate tab
          -- ["]]"] = { ":lua require('astrocore.buffer').nav(vim.v.count1)<CR>", desc = "next buffer" },
          -- ["[["] = { ":lua require('astrocore.buffer').nav(-vim.v.count1)<CR>", desc = "prev buffer" },
          ["K"] = { ":lua require('astrocore.buffer').nav(vim.v.count1)<CR>", desc = "next buffer" },
          ["J"] = { ":lua require('astrocore.buffer').nav(-vim.v.count1)<CR>", desc = "prev buffer" },

          ["oo"] = { ":lua require('snacks').picker.files { hidden = true, ignored = true }<CR>" },

          -- file
        },
      },
    },
  },
}

-- vim.api.nvim_set_keymap(
--   "n",
--   "to",
--   "<cmd>Neotest output<cr>",
--   { noremap = true, silent = true, desc = "test output" }
-- )
