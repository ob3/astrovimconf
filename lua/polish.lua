-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Filetype-specific keymaps
-- Same keymap (<leader>r) executes different commands based on file type
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.keymap.set("n", "<leader>r", ":!python %<CR>", { buffer = true, desc = "Run Python file" })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "javascript",
  callback = function()
    vim.keymap.set("n", "<leader>r", ":!node %<CR>", { buffer = true, desc = "Run JavaScript file" })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.keymap.set("n", "<leader>r", ":source %<CR>", { buffer = true, desc = "Source Lua file" })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    vim.keymap.set("n", "<leader>r", ":!go run %<CR>", { buffer = true, desc = "Run Go file" })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "csv",
  callback = function()
    vim.keymap.set("n", "<C-Space>", "<cmd>CsvViewToggle delimiter=, display_mode=border header_lnum=1<cr>", { buffer = true, desc = "Toggle CSV view" })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "json",
  callback = function()
    vim.keymap.set("n", "<C-Space>", ":%!jq .<CR>", { buffer = true, desc = "Format JSON with jq" })
    vim.keymap.set("v", "<C-Space>", ":!jq .<CR>", { buffer = true, desc = "Format JSON selection with jq" })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "http",
  callback = function()
    vim.keymap.set("n", "<C-Space>", "<cmd>Rest run<cr>", { buffer = true, desc = "REST run" })
    vim.keymap.set("v", "<C-Space>", "<cmd>Rest run<cr>", { buffer = true, desc = "REST run selection" })
  end,
})
