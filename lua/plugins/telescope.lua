return {
  "nvim-telescope/telescope-live-grep-args.nvim",
  keys = {
    { "<leader>/", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", desc = "Grep with args" },
    { "<leader>s/", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", desc = "Grep with args" },
  },
  config = function()
    require("telescope").load_extension("live_grep_args")
  end
}
