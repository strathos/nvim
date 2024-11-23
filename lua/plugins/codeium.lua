return {
  "Exafunction/codeium.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  config = function()
    if os.getenv("WORK_ENV") == "true" then
      require("codeium").setup({
        api = {
          host = os.getenv("CODEIUM_HOST")
        },
        enterprise_mode = true
      })
    else
      require("codeium").setup({})
    end
  end,
}
