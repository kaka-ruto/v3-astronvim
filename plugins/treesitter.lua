return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "lua" },
    },
  },
  {
    "RRethy/nvim-treesitter-endwise",
    after = "nvim-treesitter",
    init = function() table.insert(astronvim.file_plugins, "nvim-treesitter-endwise") end,
  },
}
