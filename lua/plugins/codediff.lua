return {
  "esmuellert/codediff.nvim",
  cmd = "CodeDiff",
  keys = {
    { "<Leader>gV", "<cmd>CodeDiff history HEAD~50 %<CR>", desc = "CodeDiff: File history" },
    { "<Leader>gv", "<cmd>CodeDiff<CR>", desc = "CodeDiff: Current changes" },
  },
  opts = {},
}
