return {
  { "folke/persistence.nvim", enabled = false }, -- disable persistence first
  {
    "olimorris/persisted.nvim",
    lazy = false, -- make sure the plugin is always loaded at startup
    opts = {
      use_git_branch = true,
    },
    keys = {
      { "<leader>qs", "<cmd>SessionSave<cr>", desc = "Save session", mode = "n" },
      { "<leader>ql", "<cmd>SessionLoadLast<cr>", desc = "Load last session", mode = "n" },
      { "<leader>qd", "<cmd>SessionDelete<cr>", desc = "Delete session", mode = "n" },
      { "<leader>qc", "<cmd>Telescope persisted<cr>", desc = "Change session", mode = "n" },
    },
  }
}
