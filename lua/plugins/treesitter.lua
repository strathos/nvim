return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  opts = {
    auto_install = true,
    ensure_installed = { "robot" },
    highlight = {
      enable = true,
      -- tree-sitter-robot cannot parse valid data-driven continuation rows.
      -- Use robotframework-vim for Robot files instead.
      disable = { "robot" },
    }
  }
}
