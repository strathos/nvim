return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    opts = {
      ensure_installed = {
        "shellcheck",
        "ansible-language-server",
        "ansible-lint",
      },
    }
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      automatic_installation = true,
    },
  },
}
