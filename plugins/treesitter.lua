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
    event = "User AstroFile",
  },
}
