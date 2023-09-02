-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function copy_file_name()
  local path = vim.fn.expand("%:t")
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end

local function copy_relative_path()
  local path = vim.fn.expand("%")
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end

local function copy_absolute_path()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end

vim.keymap.set("n", "<leader>fc", copy_file_name, { desc = "Copy filename" })
vim.keymap.set("n", "<leader>fC", copy_relative_path, { desc = "Copy relative path" })
vim.keymap.set("n", "<leader>fd", copy_absolute_path, { desc = "Copy absolute path" })
