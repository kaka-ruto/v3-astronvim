-- Neovim plugins: add any plugin that makes Neovim better here - general plugins

return {
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
