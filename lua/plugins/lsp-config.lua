return {
  {
    "mason-org/mason.nvim",
    lazy = false,
    opts = {
      ensure_installed = {
        "shellcheck",
        "ansible-language-server",
        "ansible-lint",
        "hadolint",
      },
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
