return {
  "mfukar/robotframework-vim",
  lazy = false,
  init = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "robot",
      callback = function(args)
        vim.treesitter.stop(args.buf)
        vim.cmd.runtime({ "after/syntax/robot.vim", bang = true })
      end,
    })
  end,
}
