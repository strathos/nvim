return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.preselect = cmp.PreselectMode.None
    opts.completion.completeopt = "menu,menuone,noselect"
    opts.window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered()
    }
    opts.mapping = cmp.mapping.preset.insert({
      ["<CR>"] = cmp.mapping.confirm({ select = false }),
      ["<S-CR>"] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Replace,
        select = true,
      }),
      ["<C-Space>"] = cmp.mapping.complete(),
    })
    table.insert(opts.sources, {
      name = "codeium",
      group_index = 1
    })
  end,
}
