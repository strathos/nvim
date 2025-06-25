return {
  "neolooong/whichpy.nvim",
  opts = {
    locator = {
      global_virtual_environment = {
        dirs = {
          "~/workspace"
        }
      }
    }
  },
  keys = {
    { "<leader>cws", "<cmd>WhichPy select<cr>", desc = "Select Python Environment", mode = { "n", "v" } },
    { "<leader>cwr", "<cmd>WhichPy reset<cr>", desc = "Reset Python Environment", mode = { "n", "v" } },
  }
}
