return {
  "nvim-telescope/telescope.nvim",
  event = "User AstroFile",
  dependencies = {
    -- Find files in a dir
    "princejoogie/dir-telescope.nvim",
    -- So we can customize fzf to find files ignoring filename case
    "nvim-telescope/telescope-fzf-native.nvim",
  },
  opts = function(_, opts)
    return require("astronvim.utils").extend_tbl(opts, {
      defaults = {
        selection_caret = "  ",
        file_ignore_patterns = {
          "node_modules",
          "git",
        },
      },
      extensions = {
        dir = {
          hidden = false,
          no_ignore = false,
          show_preview = true,
        },
        fzf = {
          fuzzy = true, -- false will only do exact matching
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true, -- override the file sorter
          case_mode = "ignore_case", -- or "ignore_case" or "respect_case", the default case_mode is "smart_case"
        },
      },
    })
  end,
  config = function(...)
    require "plugins.configs.telescope" (...)
    local telescope = require "telescope"
    telescope.load_extension "dir"
    telescope.load_extension "harpoon"
    telescope.load_extension "fzf"
  end,
}
