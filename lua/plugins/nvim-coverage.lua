return {
  "andythigpen/nvim-coverage",
  version = "*",
  config = function()
    require("coverage").setup {
      auto_reload = true,
      auto_reload_timeout_ms = 500,
      highlights = {
        -- customize highlight groups created by the plugin
        covered = { fg = "#C3E88D" }, -- supports style, fg, bg, sp (see :h highlight-gui)
        uncovered = { fg = "#F07178" },
      },
      signs = {
        -- use your own highlight groups or text markers
        covered = { hl = "CoverageCovered", text = "▎" },
        uncovered = { hl = "CoverageUncovered", text = "▎" },
      },
      summary = {
        -- customize the summary pop-up
        min_coverage = 80.0, -- minimum coverage threshold (used for highlighting)
      },
      lang = {
        -- customize language specific settings
        go = {
          coverage_file = vim.fn.getcwd() .. "/cover.out",
        },
      },
    }

    -- Auto-show coverage on startup if cover.out exists
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        vim.defer_fn(function()
          if vim.fn.filereadable(vim.fn.getcwd() .. "/cover.out") == 1 then require("coverage").load(true) end
        end, 100)
      end,
    })
  end,
}
