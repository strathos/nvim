-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Ansible file pattern
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile", "BufEnter" }, {
  group = vim.api.nvim_create_augroup("Ansible", { clear = true }),
  pattern = {
    "*/playbooks/**/*.yaml",
    "*/playbooks/**/*.yaml",
    "*/roles/**/*.yml",
    "*/roles/**/*.yml",
    "*_vars/**/*.yml",
    "*_vars/**/*.yaml",
    "*/ansible/**/*.yaml",
    "*/ansible/**/*.yml",
  },
  callback = function()
    vim.opt.filetype = "yaml.ansible"
  end,
})
