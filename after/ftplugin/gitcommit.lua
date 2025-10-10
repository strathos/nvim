vim.schedule(function()
  vim.opt_local.textwidth = 72
  vim.opt_local.formatoptions:append("t")

  -- Highlight the subject line (line 1) past 50 characters
  vim.api.nvim_create_augroup("GitCommitSubjectHighlight", { clear = true })
  vim.api.nvim_create_autocmd({ "BufEnter", "TextChanged", "TextChangedI" }, {
    group = "GitCommitSubjectHighlight",
    buffer = 0,
    callback = function()
      -- Clear previous matches
      vim.fn.clearmatches()
      -- Highlight text after column 50 on the first line
      vim.fn.matchadd("Error", [[\%1l\%>50v.\+]])
    end,
  })
end)
