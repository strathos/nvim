-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

require("which-key").add({
  { "<leader>gD", group = "Diffget" },
  { "<leader>m", group = "misc", mode = { "n", "v" } },
})

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Remap default <leader><space> to always search from project root, which is
-- unintuitively called "cwd"
-- keymap("n", "<leader><space>", LazyVim.telescope("files", { cwd = false }), { remap = true, desc = "Find Files (cwd)" })

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

keymap("n", "<leader>bn", vim.cmd.enew, { desc = "New empty buffer" })

keymap("n", "<leader>fc", copy_file_name, { desc = "Copy filename" })
keymap("n", "<leader>fD", copy_relative_path, { desc = "Copy relative path" })
keymap("n", "<leader>fd", copy_absolute_path, { desc = "Copy absolute path" })

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("x", "p", [["_dP]])

-- nvimdiff
keymap("n", "<leader>gDr", ":diffg RE<cr>", { desc = "diffget REMOTE" })
keymap("n", "<leader>gDb", ":diffg BA<cr>", { desc = "diffget BASE" })
keymap("n", "<leader>gDl", ":diffg LO<cr>", { desc = "diffget LOCAL" })

-- blame
keymap("n", "<leader>gB", ":BlameToggle<cr>", { desc = "Toggle Blame Window"})
