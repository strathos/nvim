return {
  -- {
  --   "Exafunction/codeium.nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --   },
  --   config = function()
  --     if os.getenv("WORK_ENV") == "true" then
  --       require("codeium").setup({
  --         api = {
  --           host = os.getenv("CODEIUM_HOST")
  --         },
  --         enterprise_mode = true
  --       })
  --     else
  --       require("codeium").setup({})
  --     end
  --   end,
  -- },
  {
    "saghen/blink.compat",
    opts = {
      enable_events = true
    }
  },
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        list = {
          selection = {
            preselect = false,
            auto_insert = false
          }
        },
      },
      -- sources = {
      --   compat = { "codeium" },
      --   providers = {
      --     codeium = {
      --       kind = "Codeium",
      --       score_offset = 100,
      --       async = true,
      --     },
      --   },
      -- },
    },
  }
}
