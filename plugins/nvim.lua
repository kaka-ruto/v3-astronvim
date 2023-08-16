-- Neovim plugins: add any plugin that makes Neovim better here - general plugins

return {
  {
    -- Autosave files
    "Pocco81/auto-save.nvim",
    event = "User AstroFile",
  },
  -- {
  --   -- Abbreviation, substitution and coercion
  --   "tpope/vim-abolish",
  --   event = "User AstroFile",
  -- },
  {
    -- Auto-resize vim windows
    "beauwilliams/focus.nvim",
    config = function() require("focus").setup() end,
    event = "User AstroFile",
  },
}
