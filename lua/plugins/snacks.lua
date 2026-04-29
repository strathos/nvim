return {
  "folke/snacks.nvim",
  keys = {
    { "<leader>gi", false },
    { "<leader>gI", false },
    { "<leader>gp", false },
    { "<leader>gP", false },
  },
  opts = {
    picker = {
      sources = {
        files = { hidden = true },
        grep = { hidden = true },
        explorer = { hidden = true },
      },
      formatters = {
        file = {
          truncate = 80,
        },
      },
    },
  },
}
