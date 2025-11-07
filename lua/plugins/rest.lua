return {
  "rest-nvim/rest.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "http")
    end,
  },
  config = function()
    -- Load the rest.nvim Telescope extension
    require("telescope").load_extension "rest"
    vim.g.rest_nvim = {
      env_file = ".env", -- Path to your env file (relative to project root)
      env_file_autoload = true, -- Automatically load env file when executing requests
      -- Add other rest.nvim options below as needed
    }
  end,
}
