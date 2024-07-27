return {
  'iamyoki/buffer-reopen.nvim',
  lazy = false,
  keys = {
    {'<leader>bt', ':BufferHistory reopen<CR>', desc = 'Reopen buffer', silent = true, mode = { 'n' } },
    -- disable the default keybinding of ctrl+shift+t
    {'<C-S-t>', mode={'n'}, false},
  },
  opts = {}
}
