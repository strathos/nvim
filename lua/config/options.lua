-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.backup = false
opt.completeopt = { "menuone", "noselect" }
opt.conceallevel = 0
opt.showmode = false
opt.smartcase = true
opt.smartindent = true
opt.splitbelow = true
opt.splitright = true
opt.swapfile = false
opt.termguicolors = true
opt.undofile = true
opt.updatetime = 100
opt.writebackup = false
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.cursorline = true
opt.number = true
opt.relativenumber = true
opt.ruler = false
opt.laststatus = 3
opt.showcmd = false
opt.signcolumn = "yes"
opt.wrap = false
opt.scrolloff = 0
opt.sidescrolloff = 8
opt.title = false

opt.colorcolumn = "80"

opt.fillchars = opt.fillchars + "eob: "
opt.fillchars:append {
  stl = " ",
}

opt.shortmess:append "c"

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]

vim.g.netrw_banner = 0
vim.g.netrw_mouse = 2

vim.g.autoformat = false

vim.g.root_spec = { "cwd", { ".git", "lua" } }

vim.g.lazyvim_python_ruff = "ruff_lsp"

vim.g.clipboard = "osc52"
opt.clipboard = {
  "unnamed",
  "unnamedplus"
}

if vim.fn.has("wsl") == 1 then
  vim.g.clipboard = {
    name = "WslClipboard",
    copy = {
      ["+"] = "clip.exe",
      ["*"] = "clip.exe",
    },
    paste = {
      ["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
      ["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    },
    cache_enabled = 0,
  }
end
