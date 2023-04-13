return {
  "nvim-telescope/telescope.nvim",
  event = "User AstroFile",
  dependencies = {
    -- Find files in a dir
    "princejoogie/dir-telescope.nvim",
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
      },
    })
  end,
  config = function(...)
    require "plugins.configs.telescope"(...)
    local telescope = require "telescope"
    telescope.load_extension "dir"
  end,
}
