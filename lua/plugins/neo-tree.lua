return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    sort_case_insensitive = true,
    filesystem = {
      bind_to_cwd = true,
      follow_current_file = { enabled = true },
      use_libuv_file_watcher = true,
      filtered_items = {
        visible = true, -- when true, they will just be displayed differently than normal items
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_hidden = false, -- only works on Windows for hidden files/directories
        hide_by_name = {
          "node_modules",
        },
        hide_by_pattern = { -- uses glob style patterns
          --"*.meta",
          --"*/src/*/tsconfig.json",
        },
        always_show = { -- remains visible even if other settings would normally hide it
          ".gitignored",
        },
        never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
          ".DS_Store",
          "thumbs.db",
          ".git",
        },
        never_show_by_pattern = { -- uses glob style patterns
          --".null-ls_*",
        },
      },
    },
    window = {
      mappings = {
        ["<space>"] = "none",
        ['Y'] = function(state)
          local node = state.tree:get_node()
          if not node or not node.id then
            vim.notify("No node selected.", vim.log.levels.WARN)
            return
          end

          if vim.fn.has('clipboard') == 0 then
            vim.notify("System clipboard is not available.", vim.log.levels.ERROR)
            return
          end

          local filepath = node:get_id()
          local filename = node.name
          local modify = vim.fn.fnamemodify

          local choices = {
            { label = "Path relative to CWD",       value = modify(filepath, ':.') },
            { label = "Absolute path",              value = filepath },
            { label = "Filename",                   value = filename },
            { label = "Filename without extension", value = modify(filename, ':r') },
            { label = "Extension of the filename",  value = modify(filename, ':e') },
          }

          require("snacks").picker.select(choices, {
            prompt = 'Choose what to copy to clipboard:',
            format_item = function(item)
              return string.format("%-30s %s", item.label, item.value)
            end
          }, function(choice)
            if not choice then
              vim.notify("Copy cancelled.", vim.log.levels.INFO)
              return
            end

            vim.fn.setreg('+', choice.value)
            vim.notify('Copied to clipboard: ' .. choice.value)
          end)
        end
      },
    },
    default_component_configs = {
      indent = {
        with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
        expander_collapsed = "",
        expander_expanded = "",
        expander_highlight = "NeoTreeExpander",
      },
      icon = {
        folder_empty = "󰜌",
        folder_empty_open = "󰜌",
      },
      git_status = {
        symbols = {
          renamed = "󰁕",
          unstaged = "󰄱",
        },
      },
    },
    document_symbols = {
      kinds = {
        File = { icon = "󰈙", hl = "Tag" },
        Namespace = { icon = "󰌗", hl = "Include" },
        Package = { icon = "󰏖", hl = "Label" },
        Class = { icon = "󰌗", hl = "Include" },
        Property = { icon = "󰆧", hl = "@property" },
        Enum = { icon = "󰒻", hl = "@number" },
        Function = { icon = "󰊕", hl = "Function" },
        String = { icon = "󰀬", hl = "String" },
        Number = { icon = "󰎠", hl = "Number" },
        Array = { icon = "󰅪", hl = "Type" },
        Object = { icon = "󰅩", hl = "Type" },
        Key = { icon = "󰌋", hl = "" },
        Struct = { icon = "󰌗", hl = "Type" },
        Operator = { icon = "󰆕", hl = "Operator" },
        TypeParameter = { icon = "󰊄", hl = "Type" },
        StaticMethod = { icon = "󰠄 ", hl = "Function" },
      },
    },
    source_selector = {
      winbar = true,
      sources = {
        { source = "filesystem", display_name = " 󰉓 Files " },
        { source = "buffers", display_name = " 󰈙 Buffers " },
        { source = "git_status", display_name = " 󰊢 Git " },
      },
    },
  },
}
