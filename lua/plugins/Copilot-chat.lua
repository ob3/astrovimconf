return {
  "CopilotC-Nvim/CopilotChat.nvim",
  cmd = { "CopilotChat", "CopilotChatToggle" },
  dependencies = {
    { "github/copilot.vim" }, -- required
    { "nvim-lua/plenary.nvim" }, -- required
    { "nvim-telescope/telescope.nvim" }, -- optional, for telescope UI
  },
  debug = true,
  opts = {
    show_help = true,
    mappings = {
      complete = {
        detail = "Use @<Tab> or /<Tab> for context, Tab to autocomplete",
        insert = "<Tab>",
      },
    },
    window = {
      layout = "vertical", -- 'float', 'vertical', 'horizontal'
    },
  },
}
