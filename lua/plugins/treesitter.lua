return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    auto_install = true,
    highlight = {
      enable = true,
      disable = function(_, buf)
        local max_filesize = 1000 * 1024 -- 1 MB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
          vim.notify("Tree sitter disabled")
          return true
        end
      end,
    }
  }
}
