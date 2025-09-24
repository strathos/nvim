return {
  "akinsho/bufferline.nvim",
  opts = function(_, opts)
    opts = opts or {}
    opts.options = opts.options or {}

    opts.options.offsets = {
      {
        filetype = "neo-tree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left",
      },
    }

    -- If Neovim was started with exactly one argument and it's NOT a directory,
    -- disable always_show_bufferline; otherwise keep it enabled.
    local argc = vim.fn.argc(-1)
    local always_show = true
    if argc == 1 then
      local first = tostring(vim.fn.argv(0))
      if vim.fn.isdirectory(first) == 0 then
        always_show = false
      end
    end
    opts.options.always_show_bufferline = always_show

    return opts
  end,
}
