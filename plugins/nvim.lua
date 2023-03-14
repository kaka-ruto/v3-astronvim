-- Neovim plugins: add any plugin that makes Neovim better here - general plugins

return {
  {
    -- Autosave files
    "Pocco81/auto-save.nvim",
    -- https://astronvim.com/nightly/Recipes/custom_plugins#lazy-load-file-related-plugins
    event = "User AstroFile",
  },
  {
    -- Motions to jump anywhere real quick
    "phaazon/hop.nvim",
    branch = "v2", -- optional but strongly recommended
    config = function() require("hop").setup { keys = "etovxqpdygfblzhckisuran" } end,
    event = "User AstroFile",
  },
  {
    -- Use % to jump between matching text
    "andymass/vim-matchup",
    event = "User AstroFile",
  },
}
