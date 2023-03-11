-- Neovim plugins: add any plugin that makes Neovim better here - general plugins

return {
  {
    -- Autosave files
    "Pocco81/auto-save.nvim",
    -- https://astronvim.com/nightly/Recipes/custom_plugins#lazy-load-file-related-plugins
    init = function() table.insert(astronvim.file_plugins, "auto-save.nvim") end,
  },
  {
    -- Motions to jump anywhere real quick
    "phaazon/hop.nvim",
    branch = "v2", -- optional but strongly recommended
    config = function() require("hop").setup { keys = "etovxqpdygfblzhckisuran" } end,
    init = function() table.insert(astronvim.file_plugins, "hop.nvim") end,
  },
  {
    -- Use % to jump between matching text
    "andymass/vim-matchup",
    init = function() table.insert(astronvim.file_plugins, "vim-matchup") end,
  },
}
