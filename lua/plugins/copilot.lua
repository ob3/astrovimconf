return {
  {
    "github/copilot.vim",
    event = "InsertEnter", -- lazy load on insert mode
    init = function() vim.g.copilot_no_tab_map = true end,
    config = function()
      vim.api.nvim_set_keymap("i", "<C-l>", 'copilot#Accept("<CR>")', { expr = true, silent = true, noremap = true })
    end,
  },
  -- {
  --   "CopilotC-Nvim/CopilotChat.nvim",
  --   dependencies = {
  --     { "nvim-lua/plenary.nvim", branch = "master" },
  --   },
  --   build = "make tiktoken",
  --   opts = {},
  -- },
}
