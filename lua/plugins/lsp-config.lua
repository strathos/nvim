return {
  {
    "mason-org/mason.nvim",
    lazy = false,
    opts = {
      auto_update = false,
      ensure_installed = {},
    }
  },
  {
    "mason-org/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      automatic_installation = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    opts = {
      servers = {
        yamlls = {
          settings = {
            yaml = {
              customTags = {
                "!vault scalar"
              },
            },
          },
        },
      },
    },
  },
}
