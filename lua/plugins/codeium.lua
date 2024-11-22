local codeium_host = "codeium.com"
local codeium_enterprise_mode = false

if os.getenv("WORK_ENV") == "true" then
  codeium_host = os.getenv("CODEIUM_HOST") or ""
  codeium_enterprise_mode = true
end

return {
  "Exafunction/codeium.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  config = function()
    require("codeium").setup({
      api = {
        host = codeium_host
      },
      enterprise_mode = codeium_enterprise_mode
    })
  end,
}
