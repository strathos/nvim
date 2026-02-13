-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

require("which-key").add({
  { "<leader>cw", group = "WhichPy" },
  { "<leader>gD", group = "Diffget" },
  { "<leader>m", group = "misc", mode = { "n", "v" } },
})

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

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
